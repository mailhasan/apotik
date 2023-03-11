unit ULaporanPenerimaan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, ComCtrls, frxClass, DBGridEhGrouping,
  cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus, cxButtons,
  GridsEh, DBGridEh, frxDBSet, frxExportPDF;

type
  TFLaporanPenerimaanTgl = class(TForm)
    pnlTengah: TPanel;
    pnlBawah: TPanel;
    dbgrdhiPenjualan: TDBGridEh;
    dbgrdhDetailPenjualan: TDBGridEh;
    lblMulai: TLabel;
    dtpTgl: TDateTimePicker;
    dtpSampai: TDateTimePicker;
    lblSampai: TLabel;
    btnTampil: TcxButton;
    pnlAtas: TPanel;
    frxrprtPenerimaan: TfrxReport;
    frxdbdtstPenerimaan: TfrxDBDataset;
    btnPrint: TButton;
    frxpdfxprt1: TfrxPDFExport;
    procedure btnTampilClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dbgrdhiPenjualanCellClick(Column: TColumnEh);
    procedure btnPrintClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FLaporanPenerimaanTgl: TFLaporanPenerimaanTgl;

implementation

{$R *.dfm}
USES UDataApotik;

procedure TFLaporanPenerimaanTgl.btnTampilClick(Sender: TObject);
begin
with DM.qryPenerimaanObat do
begin
  Close;
  SQL.Clear;
  SQL.Text := 'select * from penerimaanobat where tglPenerimaanObat '+
              ' BETWEEN "'+FormatDateTime('yyyy-MM-dd',dtpTgl.Date)+'" and "'+FormatDateTime('yyyy-MM-dd',dtpSampai.Date)+'"';
  Open;
end;
end;

procedure TFLaporanPenerimaanTgl.FormShow(Sender: TObject);
begin
  dtpTgl.Date := Now;
  dtpSampai.Date := Now;
end;

procedure TFLaporanPenerimaanTgl.dbgrdhiPenjualanCellClick(
  Column: TColumnEh);
begin
  with DM.qryDetailPenerimaanObat do
  begin
   Active := False;
   SQL.Text := 'select * from detailpenerimaanobat where noPenerimaanObat="'+DM.qryPenerimaanObat['noPenerimaanObat']+'"';
   Active:=True;
  end;
end;

procedure TFLaporanPenerimaanTgl.btnPrintClick(Sender: TObject);
begin
  with DM.qryPenerimaanObat do
  begin
    Close;
    SQL.Clear;
    SQL.Text := 'select * from penerimaanobat where tglPenerimaanObat '+
                ' BETWEEN "'+FormatDateTime('yyyy-MM-dd',dtpTgl.Date)+'" and "'+FormatDateTime('yyyy-MM-dd',dtpSampai.Date)+'"';
    Open;
  end;
  frxrprtPenerimaan.LoadFromFile(ExtractFilePath(Application.ExeName)+'laporan/LaporanPenerimaan.Fr3');
  frxrprtPenerimaan.ShowReport();
end;

end.
