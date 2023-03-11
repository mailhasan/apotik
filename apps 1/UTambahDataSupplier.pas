unit UTambahDataSupplier;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls;

type
  TFTambahDataSupplier = class(TForm)
    pnlTengah: TPanel;
    pnlBawah: TPanel;
    pnlAtas: TPanel;
    btnBaru: TButton;
    btnSimpan: TButton;
    btnKeluar: TButton;
    lblKode: TLabel;
    lblNamaSupplier: TLabel;
    lblAlamat: TLabel;
    lblTelpone: TLabel;
    lblStatus: TLabel;
    edtKode: TEdit;
    edtNmSupplier: TEdit;
    mmoAlamat: TMemo;
    edtTelpone: TEdit;
    cbbStatus: TComboBox;
    procedure btnSimpanClick(Sender: TObject);
    procedure btnKeluarClick(Sender: TObject);
    procedure btnBaruClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure baru;
  end;

var
  FTambahDataSupplier: TFTambahDataSupplier;

implementation

{$R *.dfm}

uses UDataApotik,UUtama, ADODB, ComCtrls;

procedure TFTambahDataSupplier.baru;
begin
  edtKode.Clear;
  edtNmSupplier.Clear;
  mmoAlamat.Text := '';
  edtTelpone.Text := '';
  cbbStatus.ItemIndex := 0;
  btnSimpan.Caption := 'SIMPAN';
end;

procedure TFTambahDataSupplier.btnSimpanClick(Sender: TObject);
var
  tgl,user:String;
begin
if (edtKode.Text='') or (edtNmSupplier.Text='') or (mmoAlamat.Text='') or (edtTelpone.Text='') then
    ShowMessage('Data Tidak Boleh Kosong...!')
    else
    begin
      tgl := FormatDateTime('yyyy-MM-dd hh:mm:ss',Now);
      user := FUtama.stat1.Panels[0].Text;
      if btnSimpan.Caption = 'SIMPAN' then
        begin
          if DM.qrySupplier.Locate('kdSupplier',edtKode.Text,[])  then
            MessageDlg('Data Sudah Ada!!',mtWarning,[mbok],0)
          else
          begin
            with DM.qrySupplier do
            begin
              Close;
              SQL.Clear;
              SQL.Text := 'insert into supplier (kdSupplier,namaSupplier,alamat,telpone,'+
                    'status,createDate,createUserId) values ("'+edtKode.Text+'","'+edtNmSupplier.Text+'",'+
                    '"'+mmoAlamat.Text+'","'+edtTelpone.Text+'","'+cbbStatus.Text+'","'+tgl+'","'+user+'")';
              ExecSQL;
              SQL.Text := 'select * from supplier';
              Open;
            end;
          end;
        end
        else
        begin
          with DM.qrySupplier do
          begin
            Close;
            SQL.Clear;
            SQL.Text := 'update supplier set kdSupplier="'+edtKode.Text+'",namaSupplier="'+edtNmSupplier.Text+'",'+
                        'alamat="'+mmoAlamat.Text+'",telpone="'+edtTelpone.Text+'",modifDate="'+tgl+'",'+
                        'modifUserId="'+user+'" where kdSupplier="'+edtKode.Text+'" ';
            ExecSQL;
            SQL.Text := 'select * from supplier';
            Open;
          end;
        end;
    end;
end;

procedure TFTambahDataSupplier.btnKeluarClick(Sender: TObject);
begin
  Close;
end;

procedure TFTambahDataSupplier.btnBaruClick(Sender: TObject);
begin
  baru;
end;

end.
