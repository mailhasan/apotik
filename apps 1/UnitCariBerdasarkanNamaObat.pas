unit UnitCariBerdasarkanNamaObat;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus,
  cxControls, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, StdCtrls, cxButtons, ComCtrls,
  ExtCtrls, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, DB, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid;

type
  TFormCariBerdasarkanNamaObat = class(TForm)
    pnlAtas: TPanel;
    pnlBawah: TPanel;
    lblMulai: TLabel;
    lblSampai: TLabel;
    lbl1: TLabel;
    dtpTgl: TDateTimePicker;
    btnTampil: TcxButton;
    dtpSampai: TDateTimePicker;
    pnlTengah: TPanel;
    cxtxtdtNAMAOBAT: TcxTextEdit;
    cxgrdbtblvwGrid1DBTableView1: TcxGridDBTableView;
    cxgrdlvlGrid1Level1: TcxGridLevel;
    cxgrd1: TcxGrid;
    cxgrdbclmnGrid1DBTableView1noPenerimaanObat: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1tglPenerimaanObat: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1kdSupplier: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1namaSupplier: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1kdObat: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1namaObat: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1jumlahIsiBeli: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1jmlBeliFaktur: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1hargaBeliFaktur: TcxGridDBColumn;
    procedure btnTampilClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCariBerdasarkanNamaObat: TFormCariBerdasarkanNamaObat;

implementation

{$R *.dfm}

uses UDataApotik,UListDataPenerimaan, ADODB;

procedure TFormCariBerdasarkanNamaObat.btnTampilClick(Sender: TObject);
begin
 with DM.qryCariNmObatPenerimaan DO
 begin
   Close;
   SQL.Clear;
   SQL.Text := 'SELECT `penerimaanobat`.`noPenerimaanObat`'+
                ', `penerimaanobat`.`tglPenerimaanObat`'+
                ', `penerimaanobat`.`kdSupplier`'+
                ', `penerimaanobat`.`namaSupplier`'+
                ', `detailpenerimaanobat`.`kdObat`'+
                ', `detailpenerimaanobat`.`namaObat`'+
                ', `detailpenerimaanobat`.`jumlahIsiBeli`'+
                ', `detailpenerimaanobat`.`jmlBeliFaktur`'+
                ', `detailpenerimaanobat`.`hargaBeliFaktur`'+
           ' FROM '+
                '`detailpenerimaanobat`'+
                'INNER JOIN `penerimaanobat`'+
                    'ON (`detailpenerimaanobat`.`noPenerimaanObat` = `penerimaanobat`.`noPenerimaanObat`) WHERE  (`penerimaanobat`.`tglPenerimaanObat` BETWEEN "'+FormatDateTime('yyyy-MM-dd',dtpTgl.Date)+'" and "'+FormatDateTime('yyyy-MM-dd',dtpSampai.Date)+'") AND (`detailpenerimaanobat`.`namaObat` LIKE "%'+cxtxtdtNAMAOBAT.Text+'%")';
   Open;
 end;
end;

procedure TFormCariBerdasarkanNamaObat.FormShow(Sender: TObject);
begin
  dtpTgl.Date := FListDataPenerimaan.dtpTgl.Date;
  dtpSampai.Date := FListDataPenerimaan.dtpSampai.Date;
  cxtxtdtNAMAOBAT.Clear;
end;

end.
