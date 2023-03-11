unit UPembayaranPenerimaan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus,
  StdCtrls, cxButtons, ComCtrls, ExtCtrls, cxControls, cxContainer, cxEdit,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven, dxSkinSharp,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue, cxGroupBox,
  cxTextEdit, cxCurrencyEdit, cxLabel;

type
  TFPembayaran = class(TForm)
    pnlBawah: TPanel;
    btnPembayaran: TcxButton;
    pnlAtas: TPanel;
    cxgrpbxPelunasan: TcxGroupBox;
    lblTotalPembayaran: TLabel;
    cxcrncydtTotalPembayaran: TcxCurrencyEdit;
    lblSisaPembayaran: TLabel;
    cxcrncydtSisaPembayaran: TcxCurrencyEdit;
    lblPembayaran: TLabel;
    cxcrncydtPembayaran: TcxCurrencyEdit;
    lblStatus: TLabel;
    cbbStatusPembayaran: TComboBox;
    cxlblTotalPembelian: TcxLabel;
    cxcrncydtTotalPembelian: TcxCurrencyEdit;
    cxlblNo: TcxLabel;
    cxlblDiskon: TcxLabel;
    cxcrncydtDiskon: TcxCurrencyEdit;
    procedure cxcrncydtPembayaranKeyPress(Sender: TObject; var Key: Char);
    procedure btnPembayaranClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPembayaran: TFPembayaran;

implementation

uses UDataApotik, ADODB, UUtama;

{$R *.dfm}

procedure TFPembayaran.cxcrncydtPembayaranKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key=#13 then
  begin
    cxcrncydtTotalPembayaran.Value :=(cxcrncydtTotalPembayaran.Value+cxcrncydtPembayaran.Value);
    cxcrncydtSisaPembayaran.Value := (cxcrncydtSisaPembayaran.Value-cxcrncydtPembayaran.Value);
    cbbStatusPembayaran.SetFocus;
  end;
end;

procedure TFPembayaran.btnPembayaranClick(Sender: TObject);
var
  tgl,tglPenerimaan,tglCreate,user:String;
begin
  tglCreate := FormatDateTime('yyyy-MM-dd hh:mm:ss',Now);
  user := FUtama.stat1.Panels[0].Text;

  with DM.qryPenerimaanObat do
  begin
    Close;
    SQL.Clear;
    SQL.Text := 'update penerimaanobat set jumlahPembayaranBeli="'+FloatToStr(cxcrncydtPembayaran.Value)+'",'+
                'sisaPembayaranBeli="'+FloatToStr(cxcrncydtSisaPembayaran.Value)+'",'+
                'statusPembayaran="'+cbbStatusPembayaran.Text+'",modifDate="'+tglCreate+'",modifId="'+user+'" where noPenerimaanObat="'+cxlblNo.Caption+'"';
    ExecSQL;
    SQL.Text := 'select * from penerimaanobat where noPenerimaanObat="'+cxlblNo.Caption+'"';
    Open;
  end;

  tglPenerimaan := DM.qryPenerimaanObat['tglPenerimaanObat'];
  tgl:= FormatDateTime('yyyy-MM-dd',Now);
  with DM.qryPengeluaran do
  begin
    Close;
    SQL.Clear;
    SQL.Text := 'insert into pengeluaran (tglPengeluaran,pengeluaran,keterangan,createDate,createUserId) values '+
                    '("'+tgl+'","'+FloatToStr(cxcrncydtPembayaran.Value)+'",'+
                    '"PEMBAYARAN PELUNASAN SUPPLIER NO '+cxlblNo.Caption+' tgl '+tglPenerimaan+'","'+tglCreate+'","'+user+'")';
    ExecSQL;
    SQL.Text := 'select * from pengeluaran';
    Open;
  end;
  ShowMessage('Berhasil Di Proses....!');
  Close;
end;

end.
