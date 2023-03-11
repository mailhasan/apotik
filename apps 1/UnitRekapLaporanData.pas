unit UnitRekapLaporanData;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, ComCtrls, IdBaseComponent, IdComponent,
  IdTCPConnection, IdTCPClient, IdHTTP;

type
  TFormRekapLaporanData = class(TForm)
    pnlBawah: TPanel;
    pnlAtas: TPanel;
    pnlTengah: TPanel;
    pnlTengahAtas: TPanel;
    lblTglPenjualan: TLabel;
    lbl1: TLabel;
    dtpTGLPENJUALAN: TDateTimePicker;
    edtREKAPPENJUALAN: TEdit;
    btnSIMPAN: TButton;
    lbl2: TLabel;
    edtLink: TEdit;
    btnSelesai: TButton;
    idhtp1: TIdHTTP;
    procedure btnSelesaiClick(Sender: TObject);
    procedure btnSIMPANClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRekapLaporanData: TFormRekapLaporanData;

implementation

{$R *.dfm}
uses UDataApotik, DB, ADODB;

procedure TFormRekapLaporanData.btnSelesaiClick(Sender: TObject);
begin
  Close;
end;

procedure TFormRekapLaporanData.btnSIMPANClick(Sender: TObject);
Var
  params : TStringList;
  res : TStringStream;
begin
  params := TStringList.Create;
  params.Add('tgl='+FormatDateTime('yyyy-MM-dd',dtpTGLPENJUALAN.Date));
    params.Add('penjualan='+edtREKAPPENJUALAN.Text);
  res := TStringStream.Create('');
  idhtp1.Post(edtLink.Text, params, res);
  ///ShowMessage(res.DataString);
  res.Free;
  params.free;
  MessageDlg('Data Berhasil Di Proses...!',mtInformation,[mbOK],0);
end;

procedure TFormRekapLaporanData.FormShow(Sender: TObject);
begin
  dtpTGLPENJUALAN.Date := Now;
  with DM.qryPenjualan do
  begin
    Close;
    SQL.Clear;
    SQL.Text := 'SELECT SUM(totalPenjualan) AS totalPenjualan FROM `penjualan` WHERE tglPenjualan="'+FormatDateTime('YYYY-MM-dd',dtpTGLPENJUALAN.Date)+'"';
    Open;
  end;
  ///edtREKAPPENJUALAN.Text := DM.qryPenjualan.Fields[0].AsString;
  edtREKAPPENJUALAN.Text := DM.qryPenjualan.Fieldbyname('totalPenjualan').AsString;
end;

end.
