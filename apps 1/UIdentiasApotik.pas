unit UIdentiasApotik;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TFIndentitasApotik = class(TForm)
    pnlTengah: TPanel;
    pnlBawah: TPanel;
    btnKeluar: TButton;
    pnlAtas: TPanel;
    btnSimpan: TButton;
    lblNAMAAPOTIK: TLabel;
    lblALAMAT: TLabel;
    edtNAMAAPOTIK: TEdit;
    mmoALAMAT: TMemo;
    procedure btnKeluarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnSimpanClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FIndentitasApotik: TFIndentitasApotik;

implementation

{$R *.dfm}
uses UDataApotik, ADODB, DB;

procedure TFIndentitasApotik.btnKeluarClick(Sender: TObject);
begin
Close;
end;

procedure TFIndentitasApotik.FormShow(Sender: TObject);
begin
with DM.qryIdentitasApotek do
begin
  Close;
  SQL.Clear;
  SQL.Text := 'select * from identitasapotik where idApotek="1"';
  Open;
end;
if DM.qryIdentitasApotek.RecordCount = 1 then
  begin
    edtNAMAAPOTIK.Text := DM.qryIdentitasApotek['namaApotek'];
    mmoALAMAT.Text := DM.qryIdentitasApotek['alamat'];
  end
else
Abort;
end;

procedure TFIndentitasApotik.btnSimpanClick(Sender: TObject);
begin
  with DM.qryIdentitasApotek do
  begin
    Close;
    SQL.Clear;
    SQL.Text := 'update identitasapotik set namaApotek="'+edtNAMAAPOTIK.Text+'",alamat="'+mmoALAMAT.Text+'" where idApotek="1"';
    ExecSQL;
    SQL.Text := 'select * from identitasapotek';
    Open;
  end;
  MessageDlg('Berhasil Di Simpan...!',mtInformation,[mbOK],0)
end;

end.
