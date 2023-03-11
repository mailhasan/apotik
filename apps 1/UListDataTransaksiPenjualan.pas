unit UListDataTransaksiPenjualan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBGridEhGrouping, GridsEh, DBGridEh, StdCtrls, ExtCtrls,
  ComCtrls, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus,
  cxButtons;

type
  TFListDataTransaksiPenjualan = class(TForm)
    pnlAtas: TPanel;
    pnlBawah: TPanel;
    pnlTengah: TPanel;
    dbgrdhTransaksiPenjualan: TDBGridEh;
    dtpTgl: TDateTimePicker;
    btnTampil: TcxButton;
    procedure FormShow(Sender: TObject);
    procedure btnTampilClick(Sender: TObject);
    procedure dbgrdhTransaksiPenjualanDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure tampilData;
  end;

var
  FListDataTransaksiPenjualan: TFListDataTransaksiPenjualan;

implementation

{$R *.dfm}
uses UDataApotik,UPenjualanObat, ADODB, DB;

/// tampil data penjualan
procedure TFListDataTransaksiPenjualan.tampilData;
begin
  with DM.qryPenjualan do
  begin
    Close;
    SQL.Clear;
    SQL.Text := 'select * from penjualan where tglPenjualan="'+FormatDateTime('yyyy-MM-dd',dtpTgl.Date)+'"';
    Open;
  end;
end;

procedure TFListDataTransaksiPenjualan.FormShow(Sender: TObject);
begin
  dtpTgl.Date := Now;
  tampilData;
end;

procedure TFListDataTransaksiPenjualan.btnTampilClick(Sender: TObject);
begin
tampilData;
end;

procedure TFListDataTransaksiPenjualan.dbgrdhTransaksiPenjualanDblClick(
  Sender: TObject);
begin
if DM.qryPenjualan.RecordCount >= 1 then
  begin
    with FPenjualanObat do
    begin
      edtNoPenjualan.Text := DM.qryPenjualan.Fieldbyname('noPenjualan').AsString;
      dtpTglPenjualan.Date := DM.qryPenjualan.Fieldbyname('tglPenjualan').AsDateTime;
      cbbDokter.EditValue := DM.qryPenjualan.Fieldbyname('namaDokter').AsString;
      edtKdDokter.Text := DM.qryPenjualan.Fieldbyname('kdDokter').AsString;
      edtNama.Text := DM.qryPenjualan.Fieldbyname('namaPasien').AsString;
      edtUmur.Text := DM.qryPenjualan.Fieldbyname('umurPasien').AsString;
      edtAlamat.Text := DM.qryPenjualan.Fieldbyname('alamatPasien').AsString;
      edtAsalResep.Text := DM.qryPenjualan.Fieldbyname('asalResepPasien').AsString;
      edtTotalBayar.Text := FloatToStr(DM.qryPenjualan.Fieldbyname('totalPenjualan').AsFloat);
      lblIsiTotalBayar.Caption := 'TOTAL BAYAR :'+edtTotalBayar.Text;
      ///tampil detail penjualan
      awalDetaiPenjualan;
    end;
    Close;
    
  end
  else
  MessageDlg('Data Tidak Di Temukan...!!',mtWarning,[mbok],0)
end;

end.
