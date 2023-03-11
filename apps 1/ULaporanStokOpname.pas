unit ULaporanStokOpname;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus,
  StdCtrls, cxButtons, ComCtrls, ExtCtrls, DBGridEhGrouping, GridsEh,
  DBGridEh, frxClass, frxExportPDF, frxDBSet;

type
  TFLaporangStokOpname = class(TForm)
    pnlAtas: TPanel;
    pnlBawah: TPanel;
    lblMulai: TLabel;
    lblSampai: TLabel;
    dtpTgl: TDateTimePicker;
    dtpSampai: TDateTimePicker;
    btnTampil: TcxButton;
    pnlTengah: TPanel;
    dbgrdhStokOpname: TDBGridEh;
    frxrprtStokOpname: TfrxReport;
    frxdbdtstStokOpname: TfrxDBDataset;
    btnPrint: TcxButton;
    frxpdfxprtStok: TfrxPDFExport;
    procedure FormShow(Sender: TObject);
    procedure btnTampilClick(Sender: TObject);
    procedure btnPrintClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FLaporangStokOpname: TFLaporangStokOpname;

implementation

{$R *.dfm}

uses UDataApotik, ADODB, DB;

procedure TFLaporangStokOpname.FormShow(Sender: TObject);
begin
  dtpTgl.Date := Now;
  dtpSampai.Date := Now;
end;

procedure TFLaporangStokOpname.btnTampilClick(Sender: TObject);
begin
  with DM.qryStokOpname do
  begin
    Close;
    SQL.Clear;
    SQL.Text := 'select * from stokopname where tglStokOpname BETWEEN "'+FormatDateTime('yyyy-MM-dd',dtpTgl.Date)+'" and "'+FormatDateTime('yyyy-MM-dd',dtpSampai.Date)+'"';
    Open;
  end;
end;

procedure TFLaporangStokOpname.btnPrintClick(Sender: TObject);
begin
 with DM.qryStokOpname do
  begin
    Close;
    SQL.Clear;
    SQL.Text := 'select * from stokopname where tglStokOpname BETWEEN "'+FormatDateTime('yyyy-MM-dd',dtpTgl.Date)+'" and "'+FormatDateTime('yyyy-MM-dd',dtpSampai.Date)+'"';
    Open;
  end;
  frxrprtStokOpname.LoadFromFile(ExtractFilePath(Application.ExeName)+'laporan/LaporanStokOpname.Fr3');
  frxrprtStokOpname.ShowReport();
end;

end.
