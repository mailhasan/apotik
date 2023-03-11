unit UnitCariPengguna;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid;

type
  TFormCariPengguna = class(TForm)
    pnlAtas: TPanel;
    pnlBawah: TPanel;
    btnKeluar: TButton;
    pnlTengah: TPanel;
    cxgrdbtblvwGrid1DBTableView1: TcxGridDBTableView;
    cxgrdlvlGrid1Level1: TcxGridLevel;
    cxgrd1: TcxGrid;
    cxgrdbclmnGrid1DBTableView1namaPengguna: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1status: TcxGridDBColumn;
    lbl1: TLabel;
    edtCARI: TEdit;
    procedure btnKeluarClick(Sender: TObject);
    procedure edtCARIChange(Sender: TObject);
    procedure edtCARIDblClick(Sender: TObject);
    procedure cxgrdbtblvwGrid1DBTableView1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCariPengguna: TFormCariPengguna;

implementation

{$R *.dfm}
USES UDataApotik,UnitTambahJadwalKerja, ADODB;

procedure TFormCariPengguna.btnKeluarClick(Sender: TObject);
begin
Close;
end;

procedure TFormCariPengguna.edtCARIChange(Sender: TObject);
begin
IF edtCARI.Text = '' then
  begin
   with DM.qryPengguna DO
   begin
    Close;
    SQL.Clear;
    SQL.Text := 'SELECCT * FROM pengguna';
    Open;
   end;
  end
  ELSE
  begin
    with DM.qryPengguna do
    begin
      Close;
      SQL.Clear;
      SQL.Text := 'select * from pengguna where namaPengguna like "%'+edtCARI.Text+'"';
      Open;
    end;
  end;
end;

procedure TFormCariPengguna.edtCARIDblClick(Sender: TObject);
begin
edtCARI.Clear;
end;

procedure TFormCariPengguna.cxgrdbtblvwGrid1DBTableView1DblClick(
  Sender: TObject);
begin
if DM.qryPengguna.RecordCount >= 1 then
  begin
   FormTambahJadwalKerja.cxtxtdtPETUGAS.Text := DM.qryPengguna.fieldByname('namaPengguna').AsString;
   Close;
  end
  else
  MessageDlg('Data Tidak Di Temukan...!',mtWarning,[mbOK],0);
end;

end.
