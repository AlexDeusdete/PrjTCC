unit U_P;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  U_MenuEscroto, Vcl.OleCtrls, SHDocVw, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Data.Win.ADODB;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    Edit1: TEdit;
    BitBtn2: TBitBtn;
    Edit2: TEdit;
    DBGrid1: TDBGrid;
    Edit3: TEdit;
    Edit4: TEdit;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    Panel2: TPanel;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    DBGrid2: TDBGrid;
    ADOConnection1: TADOConnection;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure ADOQuery1BeforePost(DataSet: TDataSet);
  private
    { Private declarations }
    Menu : TMenu;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses frmTeste, Unit3;

procedure TForm1.ADOQuery1BeforePost(DataSet: TDataSet);
begin
   ADOQuery1.FieldByName('Fornecedor').Value := 1;
end;

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
   Menu.AddItem(Edit1.Text, Edit1.Text);
end;

procedure TForm1.BitBtn2Click(Sender: TObject);
begin
   Menu.AddSubItem(Edit1.Text, Edit1.Text, Edit2.Text);
end;

procedure TForm1.BitBtn3Click(Sender: TObject);
begin
   DBGrid1.Columns[StrToInt(Edit3.Text)].Index := StrToInt(Edit4.text);
end;

procedure TForm1.BitBtn4Click(Sender: TObject);
var
   i,aux : Integer;
begin
   aux := 1;
   i := 0;
   while True do begin
      if aux = DBGrid1.Columns.Count then
         exit;
      if DBGrid1.Columns[i].FieldName = IntToStr(aux)  then
      begin
         DBGrid1.Columns[i].Index := aux-1;
         aux := aux + 1;
         i := 0;
      end;
      i := i+1;
   end;

end;

procedure TForm1.BitBtn5Click(Sender: TObject);
begin
   frmTeste2 := TfrmTeste2.Create(Panel2);
   frmTeste2.Parent := Panel2;
   frmTeste2.Show;
  // frmTeste2.DisposeOf;
end;

procedure TForm1.BitBtn6Click(Sender: TObject);
var
   panel : TPanel;
   btn : TSpeedButton ;
   fsTeste : Integer;
begin
   fsTeste := 0;
   panel := TPanel.Create(Application);
   panel.Parent := Self;
   panel.ParentBackground := False;
   panel.ParentColor := False;
   panel.Color := clBlack;
   panel.Top := 288;
   panel.Left := 400;
   panel.Name := 'pnl' + Edit1.Text;
   panel.Height := 45;
   panel.Caption := '';
   inc(fsTeste, 45);
end;

procedure TForm1.BitBtn7Click(Sender: TObject);
begin
   Form3 := TForm3.Create(Self);
   Form3.ShowModal;
end;

procedure TForm1.FormShow(Sender: TObject);
var
   ponteiro : ^TPanel;
begin

   ponteiro := @Panel1;
   Menu := TMenu.Create(ponteiro^);

   ADOQuery1.Open;
end;

end.
