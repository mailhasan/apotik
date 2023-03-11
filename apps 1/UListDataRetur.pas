unit UListDataRetur;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBGridEhGrouping, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Menus, StdCtrls, cxButtons, ComCtrls, GridsEh,
  DBGridEh, ExtCtrls;

type
  TFListDataReturSupplier = class(TForm)
    pnlTengah: TPanel;
    dbgrdhiPenjualan: TDBGridEh;
    dbgrdhDetailPenjualan: TDBGridEh;
    pnlBawah: TPanel;
    lblMulai: TLabel;
    lblSampai: TLabel;
    dtpTgl: TDateTimePicker;
    btnTampil: TcxButton;
    dtpSampai: TDateTimePicker;
    pnlAtas: TPanel;
    procedure FormShow(Sender: TObject);
    procedure btnTampilClick(Sender: TObject);
    procedure dbgrdhiPenjualanCellClick(Column: TColumnEh);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FListDataReturSupplier: TFListDataReturSupplier;

implementation

{$R *.dfm}
uses UDataApotik;

procedure TFListDataReturSupplier.FormShow(Sender: TObject);
begin
  dtpTgl.Date := Now;
  dtpSampai.Date := Now;
end;

procedure TFListDataReturSupplier.btnTampilClick(Sender: TObject);
begin
with DM.qryReturSupplier do
begin
  Close;
  SQL.Clear;
  SQL.Text := 'select * from retursupplier where tglRetursupplier '+
              ' BETWEEN "'+FormatDateTime('yyyy-MM-dd',dtpTgl.Date)+'" and "'+FormatDateTime('yyyy-MM-dd',dtpSampai.Date)+'"';
  Open;
end;
end;

procedure TFListDataReturSupplier.dbgrdhiPenjualanCellClick(
  Column: TColumnEh);
begin
  with DM.qryDetailReturSupplier do
  begin
   Active := False;
   SQL.Text := 'SELECT * FROM detailreturSupplier where noReturSupplier="'+DM.qryReturSupplier['noReturSupplier']+'"';
   Active:=True;
  end;
end;

end.
