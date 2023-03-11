unit ULaporanUrutanBarang;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBGridEhGrouping, GridsEh, DBGridEh, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Menus, StdCtrls, cxButtons,
  ComCtrls;

type
  TFLaporanUrutanBarang = class(TForm)
    pnlBawah: TPanel;
    pnlAtas: TPanel;
    pnlTengah: TPanel;
    dbgrdhBarangTerjual: TDBGridEh;
    lblMulai: TLabel;
    dtpTgl: TDateTimePicker;
    dtpSampai: TDateTimePicker;
    lblSampai: TLabel;
    btnTampil: TcxButton;
    procedure btnTampilClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure tampilUrutan;
  end;

var
  FLaporanUrutanBarang: TFLaporanUrutanBarang;

implementation

{$R *.dfm}

uses UDataApotik, ADODB, DB;

procedure TFLaporanUrutanBarang.tampilUrutan;
begin
  with DM.qryUrutanBarangTerjual do
  begin
    Close;
    SQL.Clear;
    SQL.Text := 'SELECT '+
                    '`penjualan`.`noPenjualan`'+
                    ', `penjualan`.`tglPenjualan`'+
                    ', `detailpenjualan`.`namaObat`'+
                    ', SUM(`detailpenjualan`.`jumlahJual`)'+
                'FROM'+
                    '`detailpenjualan`'+
                    'INNER JOIN `penjualan`'+
                        'ON (`detailpenjualan`.`noPenjualan` = `penjualan`.`noPenjualan`)'+
                'WHERE (`penjualan`.`tglPenjualan` BETWEEN "'+FormatDateTime('yyyy-mm-dd',dtpTgl.Date)+'" and "'+FormatDateTime('yyyy-mm-dd',dtpSampai.Date)+'")'+
                'GROUP BY `detailpenjualan`.`namaObat`'+
                'ORDER BY SUM(`detailpenjualan`.`jumlahJual`) DESC';
    Open;
  end;
end;

procedure TFLaporanUrutanBarang.btnTampilClick(Sender: TObject);
begin
  tampilUrutan;
end;

procedure TFLaporanUrutanBarang.FormShow(Sender: TObject);
begin
  dtpTgl.Date := Now;
  dtpSampai.Date := Now;
  tampilUrutan;
end;

end.
