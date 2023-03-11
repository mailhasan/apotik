unit UnListDataPenjualan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBGridEhGrouping, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Menus, cxButtons, ComCtrls, StdCtrls, GridsEh,
  DBGridEh, ExtCtrls;

type
  TFListDataPenjualan = class(TForm)
    pnlTengah: TPanel;
    dbgrdhiPenjualan: TDBGridEh;
    pnlBawah: TPanel;
    dtpTgl: TDateTimePicker;
    btnTampil: TcxButton;
    pnlAtas: TPanel;
    dbgrdhDetailPenjualan: TDBGridEh;
    lblMulai: TLabel;
    lblSampai: TLabel;
    dtpSampai: TDateTimePicker;
    procedure dbgrdhiPenjualanCellClick(Column: TColumnEh);
    procedure btnTampilClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FListDataPenjualan: TFListDataPenjualan;

implementation

{$R *.dfm}

uses UDataApotik, ADODB, DB;

procedure TFListDataPenjualan.dbgrdhiPenjualanCellClick(Column: TColumnEh);
begin

with DM.qryDetailPenjualan do
begin
 Active := False;
 SQL.Text := 'select * from detailpenjualan where noPenjualan="'+DM.qryPenjualan['noPenjualan']+'"';
 Active:=True;
end;

end;

procedure TFListDataPenjualan.btnTampilClick(Sender: TObject);
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

procedure TFListDataPenjualan.FormShow(Sender: TObject);
begin
  dtpTgl.Date := Now;
  dtpSampai.Date := Now;
end;

end.

