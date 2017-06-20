program prj_Menubol;

uses
  Vcl.Forms,
  U_P in 'U_P.pas' {Form1},
  U_MenuEscroto in 'U_MenuEscroto.pas',
  U_WEBBRO in 'U_WEBBRO.pas' {Form2},
  frmTeste in 'frmTeste.pas' {frmTeste2},
  Unit3 in 'Unit3.pas' {Form3};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
