unit ULaporanPendapatan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus,
  StdCtrls, cxButtons, ComCtrls, ExtCtrls, DBGridEhGrouping, GridsEh,
  DBGridEh, cxControls, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, cxTextEdit, cxCurrencyEdit;

type
  TFLaporangPendapatan = class(TForm)
    pnlBawah: TPanel;
    lblMulai: TLabel;
    lblSampai: TLabel;
    dtpTgl: TDateTimePicker;
    dtpSampai: TDateTimePicker;
    btnTampil: TcxButton;
    btnTambah: TcxButton;
    btnUbah: TcxButton;
    pnlAtas: TPanel;
    pnlTengah: TPanel;
    grpPengeluaran: TGroupBox;
    grpPengeluaranPembelian: TGroupBox;
    grpPengeluaranLain: TGroupBox;
    dbgrdhPengeluaranPembelian: TDBGridEh;
    dbgrdhPengeluaranLain: TDBGridEh;
    grpPendapatan: TGroupBox;
    dbgrdhPendapatan: TDBGridEh;
    grpPerhitungan: TGroupBox;
    lblPendapatan: TLabel;
    lblKurang: TLabel;
    lblPengeluaran: TLabel;
    lblSamaDgn: TLabel;
    lblHasil: TLabel;
    lblSisaPembayaran: TLabel;
    cxcrncydtPendapatan: TcxCurrencyEdit;
    cxcrncydtPengeluaran: TcxCurrencyEdit;
    cxcrncydtHasil: TcxCurrencyEdit;
    cxcrncydtSisaPembayaran: TcxCurrencyEdit;
    procedure btnTampilClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure settingTgl;
    procedure pengeluaran;
    procedure pengeluaranLain;
    procedure pendapatan;
    procedure tampilPerhitungan;
  end;

var
  FLaporangPendapatan: TFLaporangPendapatan;
  tglMulai,tglSelesai:String;
implementation

{$R *.dfm}
uses UDataApotik, DateUtils, ADODB, DB;

procedure TFLaporangPendapatan.settingTgl;
begin
  tglMulai := FormatDateTime('yyyy-MM-dd',dtpTgl.Date);
  tglSelesai := FormatDateTime('yyyy-MM-dd',dtpSampai.Date);
end;

procedure TFLaporangPendapatan.pengeluaran;
begin
 settingTgl;
 with DM.qryPenerimaanObat do
 begin
  Close;
  SQL.Clear;
  SQL.Text := 'select * from penerimaanobat WHERE tglPenerimaanObat BETWEEN "'+tglMulai+'" and "'+tglSelesai+'"';
  Open;
 end;
end;

procedure TFLaporangPendapatan.pengeluaranLain;
begin
settingTgl;
 with DM.qryPengeluaran do
 begin
   Close;
   SQL.Clear;
   SQL.Text := 'select * from pengeluaran WHERE tglPengeluaran BETWEEN "'+tglMulai+'" and "'+tglSelesai+'" ';
   Open;
 end;
end;

procedure TFLaporangPendapatan.pendapatan;
begin
 settingTgl;
 with DM.qryPenjualan do
 begin
  Close;
   SQL.Clear;
   SQL.Text := 'select * from penjualan WHERE tglPenjualan BETWEEN "'+tglMulai+'" and "'+tglSelesai+'" ';
   Open;
 end;
end;

procedure TFLaporangPendapatan.tampilPerhitungan;
begin
  cxcrncydtPendapatan.Value := StrToFloat(dbgrdhPendapatan.columns[2].Footer.SumValue);
  cxcrncydtPengeluaran.Value := StrToFloat(dbgrdhPengeluaranPembelian.columns[4].Footer.SumValue)+StrToFloat(dbgrdhPengeluaranLain.columns[1].Footer.SumValue);
  cxcrncydtHasil.Value :=  cxcrncydtPendapatan.Value-cxcrncydtPengeluaran.Value;
  cxcrncydtSisaPembayaran.Value := StrToFloat(dbgrdhPengeluaranPembelian.columns[5].Footer.SumValue);
end;


procedure TFLaporangPendapatan.btnTampilClick(Sender: TObject);
begin
pengeluaran; pengeluaranLain; pendapatan; tampilPerhitungan;
end;

procedure TFLaporangPendapatan.FormShow(Sender: TObject);
begin
  dtpTgl.Date := Now;
  dtpSampai.Date := Now;
end;

end.
