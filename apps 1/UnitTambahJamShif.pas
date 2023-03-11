unit UnitTambahJamShif;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, cxTextEdit, cxMaskEdit, cxSpinEdit, cxTimeEdit,
  cxMemo, cxLabel;

type
  TFormTambahJamShif = class(TForm)
    pnlAtas: TPanel;
    pnlBawah: TPanel;
    btnBaru: TButton;
    btnSimpan: TButton;
    btnKeluar: TButton;
    pnlTengah: TPanel;
    lblKode: TLabel;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    cbbSHIF: TComboBox;
    cxtmdtJamMasuk: TcxTimeEdit;
    cxtmdtJamPulang: TcxTimeEdit;
    cxmKETERANGAN: TcxMemo;
    cxlblID: TcxLabel;
    procedure btnKeluarClick(Sender: TObject);
    procedure btnBaruClick(Sender: TObject);
    procedure btnSimpanClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure baru;
  end;

var
  FormTambahJamShif: TFormTambahJamShif;

implementation

uses UDataApotik, UUtama;

{$R *.dfm}

procedure TFormTambahJamShif.baru;
begin
  cbbSHIF.ItemIndex := 0;
  cxtmdtJamMasuk.Time := Now;
  cxtmdtJamPulang.Time := Now;
  cxmKETERANGAN.Text := '';
  cxlblID.Caption := '';
end;


procedure TFormTambahJamShif.btnKeluarClick(Sender: TObject);
begin
  Close;
end;

procedure TFormTambahJamShif.btnBaruClick(Sender: TObject);
begin
  baru;
end;

procedure TFormTambahJamShif.btnSimpanClick(Sender: TObject);
var
  jamMasuk,jamPulang,user,tgl:String;
begin
if (cbbSHIF.Text = '') or (cxtmdtJamMasuk.Text='') or (cxtmdtJamPulang.Text='') then
    ShowMessage('Data Tidak Boleh Kosong...!')
    else
    begin
      jamMasuk := FormatDateTime('hh:mm:ss',cxtmdtJamMasuk.Time);
      jamPulang := FormatDateTime('hh:mm:ss',cxtmdtJamPulang.Time);
      tgl := FormatDateTime('YYYY-MM-dd hh:mm:ss',Now);
      user := FUtama.stat1.Panels[0].Text;
      if btnSimpan.Caption = 'SIMPAN' then
        begin
          with DM.qryJamShif do
          begin
            Close;
            SQL.Clear;
            SQL.Text := 'insert into jamshif (SHIF,JAMMASUK,JAMPULANG,'+
                          'KETERANGAN,CREATEDATE,CREATEUSER) values ("'+cbbSHIF.Text+'","'+jamMasuk+'",'+
                          '"'+jamPulang+'","'+cxmKETERANGAN.Text+'","'+tgl+'","'+user+'")';
            ExecSQL;
            SQL.Text := 'select * from jamshif';
            Open;
          end;
        end
        else
        begin
          with DM.qryJamShif do
          begin
            Close;
            SQL.Clear;
            SQL.Text := 'update jamshif set SHIF="'+cbbSHIF.Text+'",JAMMASUK="'+jamMasuk+'",'+
                        'JAMPULANG="'+jamPulang+'",KETERANGAN="'+cxmKETERANGAN.Text+'",MODIFDATE="'+tgl+'",MODIFUSER="'+user+'" where ID="'+cxlblID.Caption+'" ';
            ExecSQL;
            SQL.Text := 'select * from jamshif';
            Open;
          end;
        end;
    end;
end;

end.
