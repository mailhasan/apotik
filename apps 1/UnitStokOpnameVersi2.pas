unit UnitStokOpnameVersi2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, cxGroupBox, cxLabel, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, Menus, StdCtrls, cxButtons, cxStyles,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, DB,
  cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid;

type
  TFormStokOpanameVersi2 = class(TForm)
    pnlBawah: TPanel;
    pnlAtas: TPanel;
    pnlTengah: TPanel;
    cxgrpbxProsesStokOpname: TcxGroupBox;
    cxlbl1: TcxLabel;
    cxlbl2: TcxLabel;
    cxlbl3: TcxLabel;
    cxtxtdtNOSTOKOPNAME: TcxTextEdit;
    cxdtdtTGLSTOKOPNAME: TcxDateEdit;
    cxtxtdtKETERANGAN: TcxTextEdit;
    cxlblS: TcxLabel;
    cbbSTATUS: TcxComboBox;
    btnPROSES: TcxButton;
    cxgrpbxDAFTARDATASTOKONAME: TcxGroupBox;
    btnSELESAI: TcxButton;
    cxgrdbtblvwSTOKOPNAME: TcxGridDBTableView;
    cxgrdlvlSTOKOPNAME: TcxGridLevel;
    cxgrdSTOKOPNAME: TcxGrid;
    cxgrdbclmnSTOKOPNAMEnamaObat: TcxGridDBColumn;
    cxgrdbclmnSTOKOPNAMEsatuanObat: TcxGridDBColumn;
    cxgrdbclmnSTOKOPNAMEjumlahStok: TcxGridDBColumn;
    cxgrdbclmnSTOKOPNAMEjumlahStokReal: TcxGridDBColumn;
    cxlblCari: TcxLabel;
    cxtxtdtNamaObat: TcxTextEdit;
    btnTAMPIL: TcxButton;
    cxgrdbclmnSTOKOPNAMEColumn1: TcxGridDBColumn;
    procedure FormShow(Sender: TObject);
    procedure btnPROSESClick(Sender: TObject);
    procedure btnSELESAIClick(Sender: TObject);
    procedure cxtxtdtNamaObatKeyPress(Sender: TObject; var Key: Char);
    procedure btnTAMPILClick(Sender: TObject);
    procedure cxtxtdtNamaObatDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure baru;
    procedure tampilAwal;
    procedure detailTampilStokopname;
  end;

var
  FormStokOpanameVersi2: TFormStokOpanameVersi2;

implementation

{$R *.dfm}
uses UDataApotik, ADODB, UUtama;
procedure TFormStokOpanameVersi2.baru;
begin
  with DM.qryJadwalStokOpname DO
  begin
    Close;
    SQL.Clear;
    SQL.Text := 'SELECT * FROM jadwalStokOpname';
    Open;
  end;
  cxdtdtTGLSTOKOPNAME.Date := Now;
  cxtxtdtNOSTOKOPNAME.Text := FormatDateTime('ddMMYYYY',cxdtdtTGLSTOKOPNAME.Date);
  ///cxtxtdtNOSTOKOPNAME.Enabled := False;
  cxtxtdtKETERANGAN.Clear;
  cbbSTATUS.ItemIndex := 0;
  cbbSTATUS.Enabled := True;
  cxtxtdtNamaObat.Clear;
end;

procedure TFormStokOpanameVersi2.detailTampilStokopname;
begin
 with DM.qryStokOpname do
 begin
  Close;
  SQL.Clear;
  SQL.Text := 'select * from stokopname where tglStokOpname="'+FormatDateTime('YYYY-MM-dd',cxdtdtTGLSTOKOPNAME.Date)+'" ORDER BY namaObat ASC';
  Open;
 end;
end;

procedure TFormStokOpanameVersi2.tampilAwal;
begin
  with DM.qryJadwalStokOpname do
  begin
    Close;
    SQL.Clear;
    SQL.Text := 'select * from jadwalstokopname where noJadwalStokOpname="'+cxtxtdtNOSTOKOPNAME.Text+'"';
    Open;
  end;

  if (cxtxtdtNOSTOKOPNAME.Text) = DM.qryJadwalStokOpname.FieldByName('noJadwalStokOpname').AsString   then
    begin
     ///cxtxtdtNOSTOKOPNAME.Text :=  DM.qryJadwalStokOpname.FieldByname('noJadwalStokOpname').AsString;
     cxdtdtTGLSTOKOPNAME.Date :=  DM.qryJadwalStokOpname.FieldByname('tanggalJadwaStokOpname').AsDateTime;
     cxtxtdtKETERANGAN.Text := DM.qryJadwalStokOpname.FieldByname('keterangan').AsString;
     cbbSTATUS.Text := DM.qryJadwalStokOpname.FieldByname('status').AsString;
     cbbSTATUS.Enabled := False;
     cxtxtdtNOSTOKOPNAME.Enabled := false;

     detailTampilStokopname;

    end
    else
    begin
     baru;
     detailTampilStokopname
    end;

end;

procedure TFormStokOpanameVersi2.FormShow(Sender: TObject);
begin
 tampilAwal;
end;

procedure TFormStokOpanameVersi2.btnPROSESClick(Sender: TObject);
begin
if (cxtxtdtNOSTOKOPNAME.Text='') or (cxdtdtTGLSTOKOPNAME.Text='') or (cxtxtdtKETERANGAN.Text='') then
  begin
   MessageDlg('Data Wajib Di isi lengkap...!',mtWarning,[mbOK],0);
  end
  else
  begin
    if DM.qryJadwalStokOpname.Locate('noJadwalStokOpname',cxtxtdtNOSTOKOPNAME.Text,[])  then
      MessageDlg('No Sudah Di Lakukan Proses Stok Opname...',mtInformation,[mbOK],0)
      else
      begin
        /// insert data ke jadwal stok opname
        with DM.qryJadwalStokOpname do
        begin
         Close;
         SQL.Clear;
         SQL.Text := 'insert into jadwalstokopname (noJadwalStokOpname,tanggalJadwaStokOpname,keterangan,status,createDate,createUserId) values '+
         '("'+cxtxtdtNOSTOKOPNAME.Text+'","'+FormatDateTime('YYYY-MM-dd',cxdtdtTGLSTOKOPNAME.Date)+'","'+cxtxtdtKETERANGAN.Text+'",'+
         '"'+cbbSTATUS.Text+'","'+FormatDateTime('YYYY-MM-dd HH:mm:ss',Now)+'","'+FUtama.stat1.Panels[0].Text+'")';
         ExecSQL;
         SQL.Text := 'select * from jadwalstokopname';
         Open;
        end;
        cbbSTATUS.Enabled := False;

        /// insert into ke tabel stok opname
        with DM.qryStokOpname do
        begin
         Close;
         SQL.Clear;
         SQL.Text := 'INSERT INTO stokopname (`kdObat`,`namaObat`,`satuanObat`,`lokasiRak`,`jumlahStok`) SELECT `kdObat`,`namaObat`,`satuanObat`,`lokasiRak`,`jumlahStok` FROM obat';
         ExecSQL;
         ///SQL.Text := 'select * from stokopname';
         ///Open;
        end;

        /// update di stok opname setelah data obat ke input
        with DM.qryStokOpname do
        begin
         Close;
         SQL.Clear;
         SQL.Text := 'UPDATE stokopname SET tglStokOpname="'+FormatDateTime('YYYY-MM-dd',cxdtdtTGLSTOKOPNAME.Date)+'",jumlahStokReal=0,keterangan="'+cxtxtdtKETERANGAN.Text+'" WHERE tglStokOpname IS NULL';
         ExecSQL;
         ///SQL.Text := 'select * from stokopname';
         ///Open;
        end;

        detailTampilStokopname;

        MessageDlg('Proses Berhasil...',mtInformation,[mbOK],0);
      end;
  end;
end;

procedure TFormStokOpanameVersi2.btnSELESAIClick(Sender: TObject);
begin
 if cbbSTATUS.Text = 'SELESAI' then
    MessageDlg('Data Stok opname telah di sinkronkan....!',mtWarning,[mbOK],0)
    else
    begin
        with DM.qryObat do
        begin
          Close;
          SQL.Clear;
          SQL.Text := 'UPDATE obat,stokopname SET obat.`jumlahStok`=stokopname.jumlahStokReal WHERE (obat.kdObat=stokopname.kdObat) AND (stokopname.tglStokOpname="'+FormatDateTime('YYYY-MM-dd',cxdtdtTGLSTOKOPNAME.Date)+'") ';
          ExecSQL;
          SQL.Text := 'select * from obat';
          Open;
        end;

        with DM.qryJadwalStokOpname DO
        begin
          Close;
          SQL.Clear;
          SQL.Text := 'UPDATE jadwalStokOpname set status="SELESAI",selesaiStokOpname="'+FormatDateTime('YYYY-MM-dd HH:mm:ss',Now)+'" where noJadwalStokOpname="'+cxtxtdtNOSTOKOPNAME.Text+'"';
          ExecSQL;
          SQL.Text := 'select * from jadwalStokOpname';
          Open;
        end;

        detailTampilStokopname;

        MessageDlg('Stok Opname Berhasil DI Sinkronisasikan...!',mtInformation,[mbOK],0);

        cbbSTATUS.ItemIndex := 1;
        cbbSTATUS.Enabled := False;
    end;
end;

procedure TFormStokOpanameVersi2.cxtxtdtNamaObatKeyPress(Sender: TObject;
  var Key: Char);
begin
if Key=#13 then
  begin
    Key:=#0;
    if cxtxtdtNamaObat.Text = '' then
      detailTampilStokopname
    else
    begin
      with DM.qryStokOpname do
      begin
        Close;
        SQL.Clear;
        SQL.Text := 'select * from stokopname where namaObat like "%'+cxtxtdtNamaObat.Text+'%" and (tglStokOpname="'+FormatDateTime('YYYY-MM-dd',cxdtdtTGLSTOKOPNAME.Date)+'")';
        Open;
      end;
    end;
  end;
end;

procedure TFormStokOpanameVersi2.btnTAMPILClick(Sender: TObject);
begin
 detailTampilStokopname;
end;

procedure TFormStokOpanameVersi2.cxtxtdtNamaObatDblClick(Sender: TObject);
begin
  cxtxtdtNamaObat.Clear;
end;

end.
