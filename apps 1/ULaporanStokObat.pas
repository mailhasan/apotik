unit ULaporanStokObat;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBGridEhGrouping, GridsEh, DBGridEh, StdCtrls, ExtCtrls;

type
  TFLaporanStokObat = class(TForm)
    pnlAtas: TPanel;
    pnlBawah: TPanel;
    btnKeluar: TButton;
    pnlTengah: TPanel;
    dbgrdhDokter: TDBGridEh;
    lblCari: TLabel;
    edtCari: TEdit;
    procedure btnKeluarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtCariChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FLaporanStokObat: TFLaporanStokObat;

implementation

uses UDataApotik;

{$R *.dfm}

procedure TFLaporanStokObat.btnKeluarClick(Sender: TObject);
begin
  Close;
end;

procedure TFLaporanStokObat.FormShow(Sender: TObject);
begin
with DM.qryObat do
begin
  Close;
  SQL.Clear;
  SQL.Text := 'select * from obat ORDER BY kdObat  asc';
  Open;
end;
end;

procedure TFLaporanStokObat.edtCariChange(Sender: TObject);
begin
if (edtCari.Text='') then
  begin
    with DM.qryObat do
    begin
      Close;
      SQL.Clear;
      SQL.Text := 'select * from obat ORDER BY kdObat  asc';
      Open;
    end;
  end
  else
  begin
    with DM.qryObat do
    begin
      Close;
      SQL.Clear;
      SQL.Text := 'select * from obat where kdObat like "%'+edtCari.Text+'%" or namaObat like "%'+edtCari.Text+'%"';
      Open;
    end;
  end;
end;

end.
