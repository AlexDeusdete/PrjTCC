unit U_MenuEscroto;

interface
uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls;

type TMenu = class(TObject)
   private
      fsPanel : TPanel;
      fsTeste : Integer;
   public
      constructor Create(Panel : TPanel);
      Destructor Destroy;
      procedure AddItem(NomeItem, CaptionItem : String);
      procedure AddSubItem(nomeItem, CaptionItem, MenuItem : String);
      procedure RedimensionaItem(Sender : TObject);
end;
implementation

{ TMenu }

procedure TMenu.AddItem(NomeItem, CaptionItem: String);
var
   panel : TPanel;
   btn : TSpeedButton ;
begin
   panel := TPanel.Create(fsPanel);
   panel.Parent := fsPanel;
   panel.Color := clBlack;
   panel.Top := fsTeste;
   panel.Align := alTop;
   panel.Name := 'pnl' + nomeItem;
   panel.Height := 45;
   panel.Caption := '';
   inc(fsTeste, 45);


   btn := TSpeedButton.Create(panel);
   btn.Name := 'btn' + nomeItem;
   btn.Caption := captionItem;
   btn.Flat := True;
   btn.Parent := panel;
   btn.Align := alTop;
   btn.Height := 45;
   btn.OnClick := RedimensionaItem;
end;

procedure TMenu.AddSubItem(nomeItem, CaptionItem, MenuItem: String);
var
   panel : TPanel;
   btn : TSpeedButton ;
begin
   panel := TPanel.Create(TPanel(fsPanel.FindComponent('pnl' + MenuItem)));
   panel.Parent := TPanel(fsPanel.FindComponent('pnl' + MenuItem));
   panel.Top := fsTeste;
   panel.Align := alTop;
   panel.Name := 'pnl' + nomeItem;
   panel.Height := 35;
   panel.Caption := '';
   inc(fsTeste, 35);


   btn := TSpeedButton.Create(panel);
   btn.Name := 'btn' + nomeItem;
   btn.Caption := captionItem;
   btn.Flat := True;
   btn.Parent := panel;
   btn.Align := alTop;
   btn.Height := 35;
end;

constructor TMenu.Create(Panel: TPanel);
begin
   fsPanel := Panel;
   fsTeste := 0;
end;

destructor TMenu.Destroy;
begin
   fsPanel.DisposeOf;
end;

procedure TMenu.RedimensionaItem(Sender: TObject);
var
   i,j : Integer;
   otmp : TComponent;
begin
   j := 0;

   for i := 0 to fsPanel.ComponentCount - 1 do begin
      if (fsPanel.Components[i] is TPanel) then
         if(TPanel(fsPanel.Components[i]).Name <>  TPanel(TSpeedButton(Sender).Parent).Name) then
            TPanel(fsPanel.Components[i]).Height := 45;
   end;

   for i := 0 to TPanel(TSpeedButton(Sender).Parent).ComponentCount - 1 do begin
      if (TPanel(TSpeedButton(Sender).Parent).Components[i] is TPanel) then
         inc(j)
   end;

   if TPanel(TSpeedButton(Sender).Parent).Height > 45 then
      TPanel(TSpeedButton(Sender).Parent).Height := 45
   else
      TPanel(TSpeedButton(Sender).Parent).Height := j * 35 + 45;

end;

end.
