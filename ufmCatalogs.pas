unit ufmCatalogs;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  ufmMain, uRemoteDM, Data.DB, FIBDataSet, pFIBDataSet, Vcl.ComCtrls, dxtree,
  dxdbtree, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  cxNavigator, cxDBNavigator, cxContainer, cxEdit, cxStyles, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid, dxBevel, cxSplitter, cxGroupBox,
  Vcl.ImgList;

type
  TfmCatalogs = class(TForm)
    CatalogsDataSource: TDataSource;
    CatalogsDataSet: TpFIBDataSet;
    CatalogsDataSetID: TFIBLargeIntField;
    CatalogsDataSetSUB_ID: TFIBLargeIntField;
    CatalogsDataSetCAPTION: TFIBWideStringField;
    cxGroupBox1: TcxGroupBox;
    dxDBTreeView1: TdxDBTreeView;
    cxDBNavigator1: TcxDBNavigator;
    cxSplitter1: TcxSplitter;
    dxBevel1: TdxBevel;
    cxGroupBox2: TcxGroupBox;
    CatalogsRegistryDataSet: TpFIBDataSet;
    CatalogsRegistryDataSource: TDataSource;
    CatalogsRegistryGridDBTableView1: TcxGridDBTableView;
    CatalogsRegistryGridLevel1: TcxGridLevel;
    CatalogsRegistryGrid: TcxGrid;
    cxSplitter2: TcxSplitter;
    CatalogGridDBTableView1: TcxGridDBTableView;
    CatalogGridLevel1: TcxGridLevel;
    CatalogGrid: TcxGrid;
    CatalogsImageList: TcxImageList;
    CatalogsRegistryDataSetID: TFIBLargeIntField;
    CatalogsRegistryDataSetTYPE_ID: TFIBLargeIntField;
    CatalogsRegistryDataSetCAPTION: TFIBWideStringField;
    CatalogsRegistryDataSetTABLE_NAME: TFIBWideStringField;
    CatalogsRegistryGridDBTableView1CAPTION: TcxGridDBColumn;
    CatalogsRegistryGridDBTableView1TABLE_NAME: TcxGridDBColumn;
    CatalogDataSource: TDataSource;
    CatalogDataSet: TpFIBDataSet;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CatalogsRegistryDataSetAfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmCatalogs: TfmCatalogs;

implementation

{$R *.dfm}

procedure TfmCatalogs.CatalogsRegistryDataSetAfterScroll(DataSet: TDataSet);
var
  iField: word;
  FieldDescription: string;
  Fields: string;
  FieldsWithoutKey: string;

  FieldsList: TStringList;
  FieldsParamsListWithoutKey: TStringList;
  FieldsParamsPairListWithoutKey: TStringList;

  iFields: word;
begin
  CatalogDataSet.Close;
  if Length(CatalogsRegistryDataSetTABLE_NAME.AsString) = 0 then Exit;

  Fields := RemoteDataModule.getFields(CatalogsRegistryDataSetTABLE_NAME.AsString);
  //FieldsList := TStringList.Create;
  FieldsParamsListWithoutKey := TStringList.Create;
  FieldsParamsPairListWithoutKey := TStringList.Create;

  FieldsList := RemoteDataModule.getFieldsList(CatalogsRegistryDataSetTABLE_NAME.AsString);

  FieldsList.Delete(FieldsList.IndexOf('ID'));
  FieldsWithoutKey := FieldsList.CommaText;

  for iFields := 0 to FieldsList.Count-1 do
  begin
    FieldsParamsListWithoutKey.Append(Format(':%s', [FieldsList[iFields]]));
    FieldsParamsPairListWithoutKey.Append(Format('%s = :%s', [FieldsList[iFields], FieldsList[iFields]]));
  end;

  CatalogDataSet.SQLs.SelectSQL.Text := Format('SELECT %s FROM %s', [Fields, CatalogsRegistryDataSetTABLE_NAME.AsString]);
  CatalogDataSet.SQLs.UpdateSQL.Text := Format('UPDATE %s SET %s WHERE ID = :OLD_ID', [CatalogsRegistryDataSetTABLE_NAME.AsString, FieldsParamsPairListWithoutKey.CommaText]);
  CatalogDataSet.SQLs.DeleteSQL.Text := Format('DELETE FROM %s WHERE ID = :OLD_ID', [CatalogsRegistryDataSetTABLE_NAME.AsString]);
  CatalogDataSet.SQLs.InsertSQL.Text := Format('INSERT INTO %s( %s ) VALUES( %s )', [CatalogsRegistryDataSetTABLE_NAME.AsString, FieldsWithoutKey, FieldsParamsListWithoutKey.CommaText]);
  CatalogDataSet.SQLs.RefreshSQL.Text := Format('SELECT %s FROM %s WHERE %s.ID = :OLD_ID', [Fields, CatalogsRegistryDataSetTABLE_NAME.AsString, CatalogsRegistryDataSetTABLE_NAME.AsString]);

  try
    CatalogDataSet.Open;
  except
    ShowMessage(CatalogDataSet.SQLs.SelectSQL.Text);
  end;

  while CatalogGridDBTableView1.ColumnCount >0 do
  begin
    CatalogGridDBTableView1.Columns[0].Free;
  end;

  if CatalogDataSet.FieldCount >0 then
  for iField := 0 to CatalogDataSet.FieldCount -1 do
  begin
    FieldDescription := RemoteDataModule.getFieldInfo(CatalogsRegistryDataSetTABLE_NAME.AsString, CatalogDataSet.Fields[iField].FieldName, 'FIELD_DESCRIPTION');
    with CatalogGridDBTableView1.CreateColumn do
    begin
      Visible := boolean(Length(FieldDescription) >0);
      DataBinding.FieldName := CatalogDataSet.Fields[iField].FieldName;
      Caption := FieldDescription;
      Index := StrToInt(RemoteDataModule.getFieldInfo(CatalogsRegistryDataSetTABLE_NAME.AsString, CatalogDataSet.Fields[iField].FieldName, 'FIELD_POSITION'));
    end;
  end;
  FieldsList.Free;
  FieldsParamsListWithoutKey.Free;
  FieldsParamsPairListWithoutKey.Free;
end;

procedure TfmCatalogs.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

end.
