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
    CatalogsRegistryDataSetID: TFIBLargeIntField;
    CatalogsRegistryDataSetTYPE_ID: TFIBLargeIntField;
    CatalogsRegistryDataSetCAPTION: TFIBWideStringField;
    CatalogsRegistryGridDBTableView1CAPTION: TcxGridDBColumn;
    cxSplitter2: TcxSplitter;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    CatalogsImageList: TcxImageList;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmCatalogs: TfmCatalogs;

implementation

{$R *.dfm}

procedure TfmCatalogs.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

end.
