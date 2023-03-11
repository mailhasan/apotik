unit UTambahDataPengeluarang;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  cxLabel, cxCurrencyEdit, cxMemo;

type
  TFTambahDataPengeluaran = class(TForm)
    pnlTengah: TPanel;
    pnlBawah: TPanel;
    btnBaru: TButton;
    btnSimpan: TButton;
    btnKeluar: TButton;
    pnlAtas: TPanel;
    cxlblTglPengeluaran: TcxLabel;
    cxdtdtTglPengeluaran: TcxDateEdit;
    cxlblPengeluaran: TcxLabel;
    cxcrncydtPengeluaran: TcxCurrencyEdit;
    cxlblKeterangan: TcxLabel;
    cxmKeterangan: TcxMemo;
    procedure btnKeluarClick(Sender: TObject);
    procedure btnSimpanClick(Sender: TObject);
    procedure btnBaruClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure awal;
  end;

var
  FTambahDataPengeluaran: TFTambahDataPengeluaran;

implementation

{$R *.dfm}

uses UDataApotik, ADODB, DB;

procedure TFTambahDataPengeluaran.awal;
begin
  cxdtdtTglPengeluaran.Date := Now;
  cxcrncydtPengeluaran.Value := 0;
  cxmKeterangan.Text := '';
  btnSimpan.Caption := 'SIMPAN';
end;

procedure TFTambahDataPengeluaran.btnKeluarClick(Sender: TObject);
begin
  Close;
end;

procedure TFTambahDataPengeluaran.btnSimpanClick(Sender: TObject);
var
  tgl,id:String;
begin
if (cxcrncydtPengeluaran.Value=0) then
    MessageDlg('Data Dokter Berhasil disimpan!',mtInformation,[mbok],0)
    else
    begin
      tgl := FormatDateTime('yyyy-MM-dd',cxdtdtTglPengeluaran.EditValue);
      id := DM.qryPengeluaran.FieldByname('idPengeluaran').AsString;
      if btnSimpan.Caption = 'SIMPAN' then
      begin
        with DM.qryPengeluaran do
        begin
         Close;
         SQL.Clear;
         SQL.Text := 'insert into pengeluaran (tglPengeluaran,pengeluaran,keterangan) values '+
                    '("'+tgl+'","'+FloatToStr(cxcrncydtPengeluaran.Value)+'","'+cxmKeterangan.Text+'")';
         ExecSQL;
         SQL.Text := 'select * from pengeluaran';
         Open;
        end;
        MessageDlg('Data Berhasil Di Simpan...!',mtInformation,[mbok],0);
        Close;
      end
      else
      begin
        with DM.qryPengeluaran do
        begin
         Close;
         SQL.Clear;
         SQL.Text := 'update pengeluaran set tglPengeluaran="'+tgl+'",'+
                    'pengeluaran="'+FloatToStr(cxcrncydtPengeluaran.Value)+'",'+
                    'keterangan="'+cxmKeterangan.Text+'" where idPengeluaran="'+id+'"';
         ExecSQL;
         SQL.Text := 'select * from pengeluaran';
         Open;
        end;
        MessageDlg('Data Berhasil Di Ubah...!',mtInformation,[mbok],0);
        Close;
      end;
    end;
end;

procedure TFTambahDataPengeluaran.btnBaruClick(Sender: TObject);
begin
  awal;
end;

end.
