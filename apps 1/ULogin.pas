unit ULogin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TFLogin = class(TForm)
    pnlBawah: TPanel;
    pnlAtas: TPanel;
    btnLOGIN: TButton;
    btnBATAL: TButton;
    pnlTengah: TPanel;
    lblUSERNAME: TLabel;
    lblPASSWORD: TLabel;
    edtUSERNAME: TEdit;
    edtPASSWORD: TEdit;
    procedure btnBATALClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnLOGINClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FLogin: TFLogin;

implementation

{$R *.dfm}
uses UDataApotik,UUtama, ADODB, DB;

procedure TFLogin.btnBATALClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TFLogin.FormShow(Sender: TObject);
begin
  edtUSERNAME.Text := '';
  edtPASSWORD.Text := '';
end;

procedure TFLogin.btnLOGINClick(Sender: TObject);
begin
if (edtUSERNAME.Text='') or (edtPASSWORD.Text='') then
    ShowMessage('Data Tidak Boleh Kosong...!')
    else
    begin
      with DM.qryPengguna do
      begin
        Close;
        SQL.Clear;
        SQL.Text := 'SELECT * FROM pengguna where username="'+edtUSERNAME.Text+'" and password="'+edtPASSWORD.Text+'" and status="aktif"';
        Open;
      end;
      if DM.qryPengguna.RecordCount >=1 then
        begin
          with FUtama do
          begin
            stat1.Panels[0].Text := 'NAMA PENGGUNA : '+DM.qryPengguna['namaPengguna']+'';
            stat1.Panels[1].Text := 'Username : '+DM.qryPengguna['username']+'';
            ShowModal;
            end;
          FLogin.Close;
        end
      else
        ShowMessage('Data Login Salah...! ')
    end;
end;

end.
