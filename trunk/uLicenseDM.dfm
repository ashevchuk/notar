object LicenseDataModule: TLicenseDataModule
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 282
  Width = 541
  object OgDateCode: TOgDateCode
    AutoCheck = False
    OnChecked = OgDateCodeChecked
    OnGetKey = OgDateCodeGetKey
    OnGetCode = OgDateCodeGetCode
    Left = 48
    Top = 32
  end
end
