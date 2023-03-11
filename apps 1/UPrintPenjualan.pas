unit UPrintPenjualan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, QuickRpt, QRCtrls;

type
  TFPrintPenjualan = class(TForm)
    qckrPrintNota: TQuickRep;
    qrbndPageHeaderBand1: TQRBand;
    qrlblNamaApotik: TQRLabel;
    qrbndTitleBand1: TQRBand;
    qrbndPageFooterBand1: TQRBand;
    qrlblGaris: TQRLabel;
    qrlblNoNota: TQRLabel;
    qrbndColumnHeaderBand1: TQRBand;
    qrbndDetailBand1: TQRBand;
    qrdbtxtnamaObat: TQRDBText;
    qrlblNmObat: TQRLabel;
    qrlblHargaJual: TQRLabel;
    qrlblJumlah: TQRLabel;
    qrlblSubTotal: TQRLabel;
    qrdbtxthargaJual: TQRDBText;
    qrdbtxtjumlahJual: TQRDBText;
    qrdbtxtSubTotal: TQRDBText;
    qrbndSummaryBand1: TQRBand;
    qrsysdt1: TQRSysData;
    qrlblTotalByr: TQRLabel;
    qrlblSummary: TQRLabel;
    qrlbl1: TQRLabel;
    qrlblNama: TQRLabel;
    qrlblUmur: TQRLabel;
    qrlblAlamat: TQRLabel;
    qrlblDokter: TQRLabel;
    qrlblTitel: TQRLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPrintPenjualan: TFPrintPenjualan;

implementation

{$R *.dfm}
uses UDataApotik;

end.
