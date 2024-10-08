unit UnitUpdateDataRakObat;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, Menus, cxDBLookupComboBox,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, StdCtrls,
  cxButtons, cxGridLevel, cxClasses, cxGridCustomView, cxGrid;

type
  TFormUpdateDataRakObat = class(TForm)
    cxgrdbtblvwGrid1DBTableView1: TcxGridDBTableView;
    cxgrdlvlGrid1Level1: TcxGridLevel;
    cxgrd1: TcxGrid;
    btn1: TcxButton;
    cxgrdbclmnGrid1DBTableView1kdObat: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1namaObat: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1satuanObat: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1lokasiRak: TcxGridDBColumn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormUpdateDataRakObat: TFormUpdateDataRakObat;

implementation

{$R *.dfm}
uses UDataApotik;

end.
