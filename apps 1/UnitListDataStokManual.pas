unit UnitListDataStokManual;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus,
  StdCtrls, cxButtons, ComCtrls, ExtCtrls, cxControls, cxStyles,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven, dxSkinSharp,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxEdit, DB, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid;

type
  TFormListTambahStokManual = class(TForm)
    pnlAtas: TPanel;
    pnlBawah: TPanel;
    lblMulai: TLabel;
    lblSampai: TLabel;
    dtpTgl: TDateTimePicker;
    btnTampil: TcxButton;
    dtpSampai: TDateTimePicker;
    pnlTengah: TPanel;
    cxgrdbtblvwGrid1DBTableView1: TcxGridDBTableView;
    cxgrdlvlGrid1Level1: TcxGridLevel;
    cxgrd1: TcxGrid;
    cxgrdbclmnGrid1DBTableView1tglTambahStok: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1kdObat: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1namaObat: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1jmlSisaStok: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1jmlTambahStok: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1createDate: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1createUserId: TcxGridDBColumn;
    procedure btnTampilClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormListTambahStokManual: TFormListTambahStokManual;

implementation

{$R *.dfm}
uses UDataApotik, ADODB;

procedure TFormListTambahStokManual.btnTampilClick(Sender: TObject);
begin
  WITH DM.qryhistoritambahstok DO
  begin
    Close;
    SQL.Clear;
    SQL.Text := 'SELECT * FROM historitambahstok where tglTambahStok BETWEEN "'+FormatDateTime('YYYY-MM-dd',dtpTgl.Date)+'" and "'+FormatDateTime('YYYY-MM-dd',dtpSampai.Date)+'" ORDER BY namaObat ASC';
    Open;
  end;
end;

procedure TFormListTambahStokManual.FormShow(Sender: TObject);
begin
  dtpTgl.Date := Now;
  dtpSampai.Date := Now;
end;

end.
