unit UnitLokasiRak;

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
  TFormDataLokasiRak = class(TForm)
    pnlBawah: TPanel;
    lblCari: TLabel;
    edtCari: TEdit;
    btnTambah: TButton;
    btnUbah: TButton;
    btnHapus: TButton;
    btnKeluar: TButton;
    pnlAtas: TPanel;
    pnlTengah: TPanel;
    cxgrdbtblvwGrid1DBTableView1: TcxGridDBTableView;
    cxgrdlvlGrid1Level1: TcxGridLevel;
    cxgrd1: TcxGrid;
    cxgrdbclmnGrid1DBTableView1ID: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1LOKASI: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1Column1: TcxGridDBColumn;
    procedure btnKeluarClick(Sender: TObject);
    procedure edtCariDblClick(Sender: TObject);
    procedure edtCariChange(Sender: TObject);
    procedure btnTambahClick(Sender: TObject);
    procedure btnUbahClick(Sender: TObject);
    procedure btnHapusClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormDataLokasiRak: TFormDataLokasiRak;

implementation

{$R *.dfm}
uses UDataApotik,UnitTambahLokasiRak;

procedure TFormDataLokasiRak.btnKeluarClick(Sender: TObject);
begin
  Close;
end;

procedure TFormDataLokasiRak.edtCariDblClick(Sender: TObject);
begin
  edtCari.Clear;
end;

procedure TFormDataLokasiRak.edtCariChange(Sender: TObject);
begin
if (edtCari.Text='') then
  begin
    with DM.qryLokasiRak do
    begin
      Close;
      SQL.Clear;
      SQL.Text := 'select * from lokasirak ORDER BY kdLokasi asc';
      Open;
    end;
  end
  else
  begin
    with DM.qryLokasiRak do
    begin
      Close;
      SQL.Clear;
      SQL.Text := 'select * from lokasirak where kdLokasi like "%'+edtCari.Text+'%" or LOKASI "%'+edtCari.Text+'%"';
      Open;
    end;
  end;
end;

procedure TFormDataLokasiRak.btnTambahClick(Sender: TObject);
begin
  Application.CreateForm(TFormTambahLokasiRak, FormTambahLokasiRak);
  with FormTambahLokasiRak do
  begin
    Show;
    btnBaruClick(Sender);
  end;
end;

procedure TFormDataLokasiRak.btnUbahClick(Sender: TObject);
begin
if DM.qryLokasiRak.RecordCount >= 1 then
  begin
   Application.CreateForm(TFormTambahLokasiRak, FormTambahLokasiRak);
   with FormTambahLokasiRak do
   begin
     edtKodeLokasi.Text := DM.qryLokasiRak['kdLokasi'];
     edtLokasi.Text :=  DM.qryLokasiRak['lokasi'];
     cbbSTATUS.Text := DM.qryLokasiRak['status'];
     btnSimpan.Caption := 'UBAH';
     Show;
   end;
  end
  else
  MessageDlg('Data Tidak Di temukan...!',mtWarning,[mbOK],0);
end;

procedure TFormDataLokasiRak.btnHapusClick(Sender: TObject);
var
  kode:String;
begin
if DM.qryLokasiRak.RecordCount<=0 then
  ShowMessage('Data Tidak ada ') else
  begin
  if MessageDlg('Anda Ingin Menghapus Data "'+DM.qryLokasiRak['LOKASI']+'" ?', mtConfirmation,[mbyes,mbno],0)=mryes then
  begin
    Kode := DM.qryLokasiRak['kdLokasi'];
    with DM.qryLokasiRak do
    begin
    Close;
    SQL.Text:='update lokasirak set status="tidak aktif" WHERE kdLokasi="'+Kode+'"';
    ExecSQL;
    SQL.Text:='select * from lokasirak';
    Open;
  end;
  end else
  abort;
end;
end;

end.
