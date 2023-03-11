unit UnitJamShif;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Grids, DBGrids, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid, ComCtrls, Menus, cxButtons;

type
  TFormJamShif = class(TForm)
    pnlAtas: TPanel;
    pnlBawah: TPanel;
    btnTambah: TButton;
    btnUbah: TButton;
    btnHapus: TButton;
    btnKeluar: TButton;
    pnlTengah: TPanel;
    cxgrdbtblvwGrid1DBTableView1: TcxGridDBTableView;
    cxgrdlvlGrid1Level1: TcxGridLevel;
    cxgrd1: TcxGrid;
    cxgrdbclmnGrid1DBTableView1ID: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1SHIF: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1JAMMASUK: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1JAMPULANG: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1KETERANGAN: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1CREATEDATE: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1CREATEUSER: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1MODIFDATE: TcxGridDBColumn;
    cxgrdbclmnGrid1DBTableView1MODIFUSER: TcxGridDBColumn;
    procedure btnTambahClick(Sender: TObject);
    procedure btnKeluarClick(Sender: TObject);
    procedure btnUbahClick(Sender: TObject);
    procedure btnHapusClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormJamShif: TFormJamShif;

implementation

uses UDataApotik,UnitTambahJamShif, DateUtils, ADODB;

{$R *.dfm}


procedure TFormJamShif.btnTambahClick(Sender: TObject);
begin
 Application.CreateForm(TFormTambahJamShif, FormTambahJamShif);
 with FormTambahJamShif do
 begin
  btnSimpan.Caption := 'SIMPAN';
  baru;
  Show;
 end;
end;

procedure TFormJamShif.btnKeluarClick(Sender: TObject);
begin
  Close;
end;

procedure TFormJamShif.btnUbahClick(Sender: TObject);
begin
if DM.qryJamShif.RecordCount >= 1 then
  begin
     Application.CreateForm(TFormTambahJamShif, FormTambahJamShif);
     with FormTambahJamShif do
     begin
       cbbSHIF.Text := DM.qryJamShif.FieldByname('SHIF').AsString;
       cxtmdtJamMasuk.Time := DM.qryJamShif.FieldByname('JAMMASUK').AsDateTime;
       cxtmdtJamPulang.Time := DM.qryJamShif.FieldByname('JAMPULANG').AsDateTime;
       cxmKETERANGAN.Text := DM.qryJamShif.FieldByname('KETERANGAN').AsString;
       cxlblID.Caption := DM.qryJamShif.FieldByname('ID').AsString;
       btnSimpan.Caption := 'UBAH';
       Show;
     end;
  end
  else
  MessageDlg('Data Tidak Di Temukan...!',mtInformation,[mbok],0);
end;

procedure TFormJamShif.btnHapusClick(Sender: TObject);
var
  kode: String;
begin
if DM.qryJamShif.RecordCount<=0 then
  ShowMessage('Data Tidak ada ') else
  begin
  if MessageDlg('Anda Ingin Menghapus Data "'+DM.qryJamShif['SHIF']+'" ?', mtConfirmation,[mbyes,mbno],0)=mryes then
  begin
    Kode := DM.qryJamShif['ID'];
    with DM.qryJamShif do
    begin
    Close;
    SQL.Text:='DELETE from jamshif WHERE ID="'+Kode+'"';
    ExecSQL;
    SQL.Text:= 'select * from jamshif';
    Open;
  end;
  end else
  abort;
end;
end;

end.
