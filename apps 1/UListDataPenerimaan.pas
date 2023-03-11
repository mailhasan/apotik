unit UListDataPenerimaan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus,
  StdCtrls, cxButtons, ComCtrls, ExtCtrls, DBGridEhGrouping, GridsEh,
  DBGridEh, cxControls, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, cxDropDownEdit, cxTextEdit, cxMaskEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox;

type
  TFListDataPenerimaan = class(TForm)
    pnlBawah: TPanel;
    lblMulai: TLabel;
    lblSampai: TLabel;
    dtpTgl: TDateTimePicker;
    btnTampil: TcxButton;
    dtpSampai: TDateTimePicker;
    pnlAtas: TPanel;
    pnlTengah: TPanel;
    dbgrdhiPenjualan: TDBGridEh;
    dbgrdhDetailPenjualan: TDBGridEh;
    btnPembayaran: TcxButton;
    lbl1: TLabel;
    cbbNAMASUPPLIER: TcxLookupComboBox;
    btnCariBerdasarkanObat: TcxButton;
    procedure dbgrdhiPenjualanCellClick(Column: TColumnEh);
    procedure btnTampilClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnPembayaranClick(Sender: TObject);
    procedure btnCariBerdasarkanObatClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FListDataPenerimaan: TFListDataPenerimaan;

implementation

{$R *.dfm}

uses UDataApotik,UPembayaranPenerimaan,UnitCariBerdasarkanNamaObat, DateUtils, DB;

procedure TFListDataPenerimaan.dbgrdhiPenjualanCellClick(
  Column: TColumnEh);
begin
  with DM.qryDetailPenerimaanObat do
  begin
   Active := False;
   SQL.Text := 'select * from detailpenerimaanobat where noPenerimaanObat="'+DM.qryPenerimaanObat['noPenerimaanObat']+'"';
   Active:=True;
  end;
end;

procedure TFListDataPenerimaan.btnTampilClick(Sender: TObject);
begin
if (cbbNAMASUPPLIER.Text='') then
begin
  with DM.qryPenerimaanObat do
  begin
    Close;
    SQL.Clear;
    SQL.Text := 'select * from penerimaanobat where tglPenerimaanObat '+
                ' BETWEEN "'+FormatDateTime('yyyy-MM-dd',dtpTgl.Date)+'" and "'+FormatDateTime('yyyy-MM-dd',dtpSampai.Date)+'"';
    Open;
  end;
end
else
begin
  with DM.qryPenerimaanObat do
  begin
    Close;
    SQL.Clear;
    SQL.Text := 'select * from penerimaanobat where (tglPenerimaanObat '+
                ' BETWEEN "'+FormatDateTime('yyyy-MM-dd',dtpTgl.Date)+'" and "'+FormatDateTime('yyyy-MM-dd',dtpSampai.Date)+'") and (namaSupplier="'+cbbNAMASUPPLIER.Text+'")';
    Open;
  end;
end;
end;

procedure TFListDataPenerimaan.FormShow(Sender: TObject);
begin
  dtpTgl.Date := Now;
  dtpSampai.Date := Now+1;
  cbbNAMASUPPLIER.Text := '';
end;

procedure TFListDataPenerimaan.btnPembayaranClick(Sender: TObject);
var
  noPenerimaa:String;
begin
IF DM.qryPenerimaanObat.RecordCount >= 1 then
  begin
    noPenerimaa:= DM.qryPenerimaanObat.FieldByname('noPenerimaanObat').AsString;
    with FPembayaran do
    begin
     cxlblNo.Caption := noPenerimaa;
     cxcrncydtTotalPembelian.Value := DM.qryPenerimaanObat.FieldByname('totalHargaBeli').AsFloat;
     cxcrncydtSisaPembayaran.Value := DM.qryPenerimaanObat.FieldByname('sisaPembayaranBeli').AsFloat;
     cxcrncydtTotalPembayaran.Value := DM.qryPenerimaanObat.FieldByname('jumlahPembayaranBeli').AsFloat;
     cxcrncydtDiskon.Value := DM.qryPenerimaanObat.FieldByname('diskon').AsFloat;
     cbbStatusPembayaran.Text :=  DM.qryPenerimaanObat.FieldByname('statusPembayaran').AsString;
     Show;
    end;
  end
end;

procedure TFListDataPenerimaan.btnCariBerdasarkanObatClick(
  Sender: TObject);
begin
  FormCariBerdasarkanNamaObat.Show;
end;

end.
