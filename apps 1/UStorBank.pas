unit UStorBank;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBGridEhGrouping, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Menus, StdCtrls, cxButtons, ComCtrls, GridsEh,
  DBGridEh, ExtCtrls;

type
  TFStorBank = class(TForm)
    pnlTengah: TPanel;
    dbgrdhPengeluaran: TDBGridEh;
    pnlBawah: TPanel;
    lblMulai: TLabel;
    lblSampai: TLabel;
    dtpTgl: TDateTimePicker;
    dtpSampai: TDateTimePicker;
    btnTampil: TcxButton;
    btnTambah: TcxButton;
    btnUbah: TcxButton;
    pnlAtas: TPanel;
    procedure btnTampilClick(Sender: TObject);
    procedure btnTambahClick(Sender: TObject);
    procedure btnUbahClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FStorBank: TFStorBank;

implementation

{$R *.dfm}
uses UDataApotik,UTambahStorBank, ADODB, DB;

procedure TFStorBank.btnTampilClick(Sender: TObject);
var
  tglMulai,tglSelesai:String;
begin
  tglMulai:= FormatDateTime('yyyy-MM-dd',dtpTgl.Date);
  tglSelesai := FormatDateTime('yyyy-MM-dd',dtpSampai.Date);
  with DM.qryStorBank do
  begin
   Close;
   SQL.Clear;
   SQL.Text := 'select * from storbank where tglStorBank BETWEEN "'+tglMulai+'" and "'+tglSelesai+'"';
   Open;
  end;
end;

procedure TFStorBank.btnTambahClick(Sender: TObject);
begin
  Application.CreateForm(TFTambahStorBank, FTambahStorBank);
  FTambahStorBank.awal;
  FTambahStorBank.Show;
end;

procedure TFStorBank.btnUbahClick(Sender: TObject);
begin
if DM.qryStorBank.RecordCount >= 1 then
  begin
   Application.CreateForm(TFTambahStorBank, FTambahStorBank);
   with FTambahStorBank do
   begin
     cxdtdtTglPengeluaran.EditValue := DM.qryStorBank.FIeldByname('tglStorBank').AsDateTime;
     cxcrncydtPengeluaran.Value := DM.qryStorBank.FIeldByname('storBank').AsFloat;
     cxmKeterangan.Text := DM.qryStorBank.FIeldByname('keterangan').AsString;
     btnSimpan.Caption := 'UBAH';
     Show;
   end;
  end
  else
  MessageDlg('Data Tidak Di Temukan...!',mtInformation,[mbok],0);
end;

end.
