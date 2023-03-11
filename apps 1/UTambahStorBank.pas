unit UTambahStorBank;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, StdCtrls, cxMemo, cxCurrencyEdit, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxCalendar, cxLabel, ExtCtrls;

type
  TFTambahStorBank = class(TForm)
    pnlTengah: TPanel;
    cxlblTglPengeluaran: TcxLabel;
    cxdtdtTglPengeluaran: TcxDateEdit;
    cxlblPengeluaran: TcxLabel;
    cxcrncydtPengeluaran: TcxCurrencyEdit;
    cxlblKeterangan: TcxLabel;
    cxmKeterangan: TcxMemo;
    pnlBawah: TPanel;
    btnBaru: TButton;
    btnSimpan: TButton;
    btnKeluar: TButton;
    pnlAtas: TPanel;
    procedure btnBaruClick(Sender: TObject);
    procedure btnSimpanClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure awal;
  end;

var
  FTambahStorBank: TFTambahStorBank;

implementation

uses UDataApotik;

{$R *.dfm}

procedure TFTambahStorBank.awal;
begin
  cxdtdtTglPengeluaran.Date := Now;
  cxcrncydtPengeluaran.Value := 0;
  cxmKeterangan.Text := '';
  btnSimpan.Caption := 'SIMPAN';
end;

procedure TFTambahStorBank.btnBaruClick(Sender: TObject);
begin
  awal;
end;

procedure TFTambahStorBank.btnSimpanClick(Sender: TObject);
var
  tgl,id:String;
begin
if (cxcrncydtPengeluaran.Value=0) then
    MessageDlg('Data Dokter Berhasil disimpan!',mtInformation,[mbok],0)
    else
    begin
      tgl := FormatDateTime('yyyy-MM-dd',cxdtdtTglPengeluaran.EditValue);
      id := DM.qryStorBank.FieldByname('idStorBank').AsString;
      if btnSimpan.Caption = 'SIMPAN' then
      begin
        with DM.qryStorBank do
        begin
         Close;
         SQL.Clear;
         SQL.Text := 'insert into storbank (tglStorBank,storBank,keterangan) values '+
                    '("'+tgl+'","'+FloatToStr(cxcrncydtPengeluaran.Value)+'","'+cxmKeterangan.Text+'")';
         ExecSQL;
         SQL.Text := 'select * from storbank';
         Open;
        end;
        MessageDlg('Data Berhasil Di Simpan...!',mtInformation,[mbok],0);
        Close;
      end
      else
      begin
        with DM.qryStorBank do
        begin
         Close;
         SQL.Clear;
         SQL.Text := 'update storbank set tglStorBank="'+tgl+'",'+
                    'storBank="'+FloatToStr(cxcrncydtPengeluaran.Value)+'",'+
                    'keterangan="'+cxmKeterangan.Text+'" where idStorBank="'+id+'"';
         ExecSQL;
         SQL.Text := 'select * from storbank';
         Open;
        end;
        MessageDlg('Data Berhasil Di Ubah...!',mtInformation,[mbok],0);
        Close;
      end;
    end;
end;

end.
