unit ULaporanPengeluaranLain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus,
  StdCtrls, cxButtons, ComCtrls, ExtCtrls, DBGridEhGrouping, GridsEh,
  DBGridEh, frxClass, frxDBSet;

type
  TFLaporanPengeluaranLain = class(TForm)
    pnlBawah: TPanel;
    lblMulai: TLabel;
    lblSampai: TLabel;
    dtpTgl: TDateTimePicker;
    dtpSampai: TDateTimePicker;
    btnTampil: TcxButton;
    btnPrint: TcxButton;
    pnlAtas: TPanel;
    pnlTengah: TPanel;
    dbgrdhLaporanPegeluaran: TDBGridEh;
    frxrprtLaporanPengeluaran: TfrxReport;
    frxdbdtstLaporanPengeluaran: TfrxDBDataset;
    procedure FormShow(Sender: TObject);
    procedure btnTampilClick(Sender: TObject);
    procedure btnPrintClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure tgl;
  end;

var
  FLaporanPengeluaranLain: TFLaporanPengeluaranLain;
  tglMulai,tglSampai:String;

implementation

{$R *.dfm}

uses UDataApotik, ADODB, DB;

procedure TFLaporanPengeluaranLain.tgl;
begin
 tglMulai :=  FormatDateTime('yyyy-MM-dd',dtpTgl.Date);
 tglSampai :=  FormatDateTime('yyyy-MM-dd',dtpSampai.Date);
end;

procedure TFLaporanPengeluaranLain.FormShow(Sender: TObject);
begin
  dtpTgl.Date := Now;
  dtpSampai.Date := Now;
end;

procedure TFLaporanPengeluaranLain.btnTampilClick(Sender: TObject);
begin
  tgl;
  with DM.qryPengeluaran do
  begin
    Close;
    SQL.Clear;
    SQL.Text := 'select * from pengeluaran where tglPengeluaran BETWEEN "'+tglMulai+'" and "'+tglSampai+'"';
    Open;
  end;
end;

procedure TFLaporanPengeluaranLain.btnPrintClick(Sender: TObject);
begin
  tgl;
  with DM.qryPengeluaran do
  begin
    Close;
    SQL.Clear;
    SQL.Text := 'select * from pengeluaran where tglPengeluaran BETWEEN "'+tglMulai+'" and "'+tglSampai+'"';
    Open;
  end;
  frxrprtLaporanPengeluaran.LoadFromFile(ExtractFilePath(Application.ExeName)+'laporan/LaporangPengeluaranLain.Fr3');
  frxrprtLaporanPengeluaran.ShowReport();
end;

end.
