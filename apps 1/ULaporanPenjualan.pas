unit ULaporanPenjualan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus,
  DBGridEhGrouping, GridsEh, DBGridEh, StdCtrls, cxButtons, ComCtrls,
  ExtCtrls, frxClass, frxExportPDF, frxDBSet;

type
  TFLaporangPenjualan = class(TForm)
    pnlAtas: TPanel;
    pnlBawah: TPanel;
    lblMulai: TLabel;
    lblSampai: TLabel;
    dtpTgl: TDateTimePicker;
    dtpSampai: TDateTimePicker;
    btnTampil: TcxButton;
    dbgrdhiPenjualan: TDBGridEh;
    dbgrdhDetailPenjualan: TDBGridEh;
    btnPrint: TcxButton;
    frxrprtPenjualan: TfrxReport;
    frxdbdtstPenjualan: TfrxDBDataset;
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
  FLaporangPenjualan: TFLaporangPenjualan;

implementation

uses UDataApotik;

{$R *.dfm}

procedure TFLaporangPenjualan.btnTampilClick(Sender: TObject);
begin
with DM.qryPenjualan do
begin
  Close;
  SQL.Clear;
  SQL.Text := 'select * from penjualan where tglPenjualan '+
              ' BETWEEN "'+FormatDateTime('yyyy-MM-dd',dtpTgl.Date)+'" and "'+FormatDateTime('yyyy-MM-dd',dtpSampai.Date)+'"';
  Open;
end;
end;

procedure TFLaporangPenjualan.FormShow(Sender: TObject);
begin
  dtpTgl.Date := Now;
  dtpSampai.Date := Now;
end;

procedure TFLaporangPenjualan.dbgrdhiPenjualanCellClick(Column: TColumnEh);
begin
  with DM.qryDetailPenjualan do
  begin
   Active := False;
   SQL.Text := 'select * from detailpenjualan where noPenjualan="'+DM.qryPenjualan['noPenjualan']+'"';
   Active:=True;
  end;
end;

procedure TFLaporangPenjualan.btnPrintClick(Sender: TObject);
begin
with DM.qryPenjualan do
begin
  Close;
  SQL.Clear;
  SQL.Text := 'select * from penjualan where tglPenjualan '+
              ' BETWEEN "'+FormatDateTime('yyyy-MM-dd',dtpTgl.Date)+'" and "'+FormatDateTime('yyyy-MM-dd',dtpSampai.Date)+'"';
  Open;
end;
  frxrprtPenjualan.LoadFromFile(ExtractFilePath(Application.ExeName)+'laporan/LaporanPenjualan.Fr3');
  frxrprtPenjualan.ShowReport();
end;

end.
