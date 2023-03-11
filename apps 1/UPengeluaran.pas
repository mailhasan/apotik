unit UPengeluaran;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBGridEhGrouping, GridsEh, DBGridEh, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Menus, StdCtrls, cxButtons,
  ComCtrls;

type
  TFPengeluaran = class(TForm)
    pnlBawah: TPanel;
    pnlAtas: TPanel;
    pnlTengah: TPanel;
    dbgrdhPengeluaran: TDBGridEh;
    lblMulai: TLabel;
    dtpTgl: TDateTimePicker;
    dtpSampai: TDateTimePicker;
    lblSampai: TLabel;
    btnTampil: TcxButton;
    btnTambah: TcxButton;
    btnUbah: TcxButton;
    procedure FormShow(Sender: TObject);
    procedure btnTambahClick(Sender: TObject);
    procedure btnUbahClick(Sender: TObject);
    procedure btnTampilClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPengeluaran: TFPengeluaran;

implementation

{$R *.dfm}
uses UDataApotik,UTambahDataPengeluarang, DB, ADODB;

procedure TFPengeluaran.FormShow(Sender: TObject);
begin
  dtpTgl.Date := Now;
  dtpSampai.Date := Now;
end;

procedure TFPengeluaran.btnTambahClick(Sender: TObject);
begin
  Application.CreateForm(TFTambahDataPengeluaran, FTambahDataPengeluaran);
  FTambahDataPengeluaran.awal;
  FTambahDataPengeluaran.Show;
end;

procedure TFPengeluaran.btnUbahClick(Sender: TObject);
begin
if DM.qryPengeluaran.RecordCount >= 1 then
  begin
   Application.CreateForm(TFTambahDataPengeluaran, FTambahDataPengeluaran);
   with FTambahDataPengeluaran do
   begin
     cxdtdtTglPengeluaran.EditValue := DM.qryPengeluaran.FIeldByname('tglPengeluaran').AsDateTime;
     cxcrncydtPengeluaran.Value := DM.qryPengeluaran.FIeldByname('pengeluaran').AsFloat;
     cxmKeterangan.Text := DM.qryPengeluaran.FIeldByname('keterangan').AsString;
     btnSimpan.Caption := 'UBAH';
     Show;
   end;
  end
  else
  MessageDlg('Data Tidak Di Temukan...!',mtInformation,[mbok],0);
end;

procedure TFPengeluaran.btnTampilClick(Sender: TObject);
var
  tglMulai,tglSelesai:String;
begin
  tglMulai:= FormatDateTime('yyyy-MM-dd',dtpTgl.Date);
  tglSelesai := FormatDateTime('yyyy-MM-dd',dtpSampai.Date);
  with DM.qryPengeluaran do
  begin
   Close;
   SQL.Clear;
   SQL.Text := 'select * from pengeluaran where tglPengeluaran BETWEEN "'+tglMulai+'" and "'+tglSelesai+'"';
   Open;
  end;
end;

end.
