unit ULaporanTotalResepDokter;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus,
  StdCtrls, cxButtons, ComCtrls, ExtCtrls, DBGridEhGrouping, GridsEh,
  DBGridEh;

type
  TFLaporanTotalResepDokter = class(TForm)
    pnlBawah: TPanel;
    lblMulai: TLabel;
    lblSampai: TLabel;
    dtpTgl: TDateTimePicker;
    dtpSampai: TDateTimePicker;
    btnTampil: TcxButton;
    pnlAtas: TPanel;
    pnlTengah: TPanel;
    dbgrdhLaporanTotalResepDokter: TDBGridEh;
    procedure FormShow(Sender: TObject);
    procedure btnTampilClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure tampildata;
  end;

var
  FLaporanTotalResepDokter: TFLaporanTotalResepDokter;

implementation

{$R *.dfm}

uses UDataApotik, ADODB, DB;

procedure TFLaporanTotalResepDokter.tampildata;
begin
  with DM.qryTotalResepDokter do
  begin
    Close;
    SQL.Clear;
    SQL.Text := 'SELECT '+
                    '`noPenjualan`'+
                    ', `tglPenjualan`'+
                    ', `namaDokter`'+
                    ', SUM(`totalPenjualan`) AS `total_resep`'+
                'FROM'+
                    '`penjualan` WHERE (`tglPenjualan` BETWEEN "'+FormatDateTime('yyyy-mm-dd',dtpTgl.Date)+'" and "'+FormatDateTime('yyyy-mm-dd',dtpSampai.Date)+'") '+
                'GROUP BY `namaDokter`';
    Open;
  end;
end;

procedure TFLaporanTotalResepDokter.FormShow(Sender: TObject);
begin
  dtpTgl.Date := Now;
  dtpSampai.Date := Now;
  tampildata;
end;

procedure TFLaporanTotalResepDokter.btnTampilClick(Sender: TObject);
begin
  tampildata;
end;

end.
