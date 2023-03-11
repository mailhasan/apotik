unit UnitPencarianReturSupplier;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, cxGroupBox, cxStyles, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, DB, cxDBData, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxTextEdit, cxLabel;

type
  TFormpPencarianReturSupplier = class(TForm)
    cxgrpbxCari: TcxGroupBox;
    cxgrpbxListDataSupplier: TcxGroupBox;
    cxlbl1: TcxLabel;
    cxtxtdtSUPPLIER: TcxTextEdit;
    cxgrdbtblvwSUPPLIERRETUR: TcxGridDBTableView;
    cxgrdlvlSUPPLIERRETUR: TcxGridLevel;
    cxgrdSUPPLIERRETUR: TcxGrid;
    cxlblKATEGORI: TcxLabel;
    cxgrdbclmnSUPPLIERRETURnamaSupplier: TcxGridDBColumn;
    cxgrdbclmnSUPPLIERRETURtglPenerimaanObat: TcxGridDBColumn;
    cxgrdbclmnSUPPLIERRETURkategoriPenerimaan: TcxGridDBColumn;
    cxgrdbclmnSUPPLIERRETURnoPenerimaanObat: TcxGridDBColumn;
    procedure FormShow(Sender: TObject);
    procedure cxgrdbtblvwSUPPLIERRETURDblClick(Sender: TObject);
    procedure cxtxtdtSUPPLIERPropertiesChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormpPencarianReturSupplier: TFormpPencarianReturSupplier;

implementation

{$R *.dfm}
USES UDataApotik,UReturKonsinyasi;

procedure TFormpPencarianReturSupplier.FormShow(Sender: TObject);
begin
  cxtxtdtSUPPLIER.Clear;
  with DM.qrySupplierRetur do
  begin
    Close;
    SQL.Clear;
    SQL.Text := 'SELECT noPenerimaanObat,namaSupplier,tglPenerimaanObat,kategoriPenerimaan FROM  penerimaanobat where kategoriPenerimaan="'+cxlblKATEGORI.Caption+'" ';
    Open;
  end;
end;

procedure TFormpPencarianReturSupplier.cxgrdbtblvwSUPPLIERRETURDblClick(
  Sender: TObject);
VAR
  noPnrm:String;
begin
if DM.qrySupplierRetur.RecordCount >= 1 then
  begin
    noPnrm := DM.qrySupplierRetur['noPenerimaanObat'];
    with DM.qryPenerimaanObat do
    begin
      Close;
      SQL.Clear;
      SQL.Text := 'select * from penerimaanObat where noPenerimaanObat="'+noPnrm+'" ';
      Open;
    end;
    if DM.qryPenerimaanObat['noPenerimaanObat'] = noPnrm then
    begin
      with FReturKonsinyasi do
      begin
        cxtxtdtNOPENERIMAAN.Text := DM.qryPenerimaanObat.FieldByname('noPenerimaanObat').AsString;
        dtpTglPenerimaan.Date := DM.qryPenerimaanObat.FieldByname('tglPenerimaanObat').AsDateTime;
        edtKodeSupplier.Text := DM.qryPenerimaanObat.FieldByname('kdSupplier').AsString;
        edtSupplier.Text := DM.qryPenerimaanObat.FieldByname('namaSupplier').AsString;
        cbbStatusPembayaran.Text := DM.qryPenerimaanObat.FieldByname('statusPembayaran').AsString;
        edtTotalHargaBeli.Text := DM.qryPenerimaanObat.FieldByname('totalHargaBeli').AsString;
        edtTotalPembayaran.Text := DM.qryPenerimaanObat.FieldByname('jumlahPembayaranBeli').AsString;
        edtSisaPembayaran.Text := DM.qryPenerimaanObat.FieldByname('sisaPembayaranBeli').AsString;
        ///ambildata; tampildata;
        cxtxtdtNOPENERIMAANClick(Sender);
      end;
      Close;
    end
    else
    MessageDlg('Data Tidak Di Temukan...!',mtWarning,[mbOK],0)

  end
  else
  MessageDlg('Data Tidak Di Temukan...!',mtWarning,[mbOK],0);
end;

procedure TFormpPencarianReturSupplier.cxtxtdtSUPPLIERPropertiesChange(
  Sender: TObject);
begin
IF cxtxtdtSUPPLIER.Text = '' then
  begin
     with DM.qrySupplierRetur do
      begin
        Close;
        SQL.Clear;
        SQL.Text := 'SELECT noPenerimaanObat,namaSupplier,tglPenerimaanObat,kategoriPenerimaan FROM  penerimaanobat where kategoriPenerimaan="'+cxlblKATEGORI.Caption+'" ';
        Open;
      end;
  end
  ELSE
  begin
    with DM.qrySupplierRetur do
    begin
      Close;
      SQL.Clear;
      SQL.Text := 'SELECT noPenerimaanObat,namaSupplier,tglPenerimaanObat,kategoriPenerimaan FROM  penerimaanobat where (namaSupplier LIKE "%'+cxtxtdtSUPPLIER.Text+'%") and (kategoriPenerimaan="'+cxlblKATEGORI.Caption+'")   ';
      Open;
    end;
  end;
end;

end.
