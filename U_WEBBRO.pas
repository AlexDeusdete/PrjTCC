unit U_WEBBRO;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Buttons,
  System.ImageList, Vcl.ImgList, System.Actions, Vcl.ActnList, Vcl.ToolWin,
  Vcl.OleCtrls, SHDocVw;

type
  TForm2 = class(TForm)
    WebBrowser1: TWebBrowser;
    ToolBar1: TToolBar;
    ActionList1: TActionList;
    ImageList1: TImageList;
    Label1: TLabel;
    BitBtn1: TBitBtn;
    ComboBox1: TComboBox;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    ToolButton7: TToolButton;
    ToolButton8: TToolButton;
    ToolButton9: TToolButton;
    ToolButton10: TToolButton;
    ToolButton11: TToolButton;
    procedure ToolButton1Click(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
    procedure ToolButton5Click(Sender: TObject);
    procedure ToolButton7Click(Sender: TObject);
    procedure ToolButton9Click(Sender: TObject);
    procedure ToolButton11Click(Sender: TObject);
    procedure ComboBox1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.ComboBox1Click(Sender: TObject);
begin
   WebBrowser1.Navigate(ComboBox1.Text);
end;

procedure TForm2.ToolButton11Click(Sender: TObject);
begin
   WebBrowser1.Quit;
end;

procedure TForm2.ToolButton1Click(Sender: TObject);
begin
   WebBrowser1.GoForward;
end;

procedure TForm2.ToolButton3Click(Sender: TObject);
begin
   WebBrowser1.GoBack;
end;

procedure TForm2.ToolButton5Click(Sender: TObject);
begin
   WebBrowser1.Stop;
end;

procedure TForm2.ToolButton7Click(Sender: TObject);
begin
   WebBrowser1.Refresh;
end;

procedure TForm2.ToolButton9Click(Sender: TObject);
begin
   WebBrowser1.GoHome;
end;

end.
