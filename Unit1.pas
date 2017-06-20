unit Unit1;

interface
uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls;

type TMenu = class(TObject)
   private
      fsPanel : TPanel;
   public
      constructor Create(Panel : TPanel);
      Destructor Destroy;
      procedure AddItem(NomeItem, CaptionItem : String);
      procedure AddSubItem(nomeItem, CaptionItem, MenuItem : String);
end;
implementation

{ TMenu }

procedure TMenu.AddItem(NomeItem, CaptionItem: String);
var
   panel : TPanel;
   btn : TSpeedButton ;
begin
   panel := TPanel.Create(fsPanel);
   panel.Parent := fsPanelOwner;
   panel.Align := alTop;
   panel.Name := 'pnl' + nomeItem;
   panel.Height := 45;
   panel.Caption := '';


   btn := TSpeedButton.Create(fsPanelOwner);
   btn.Name := 'btn' + nomeItem;
   btn.Caption := captionItem;
   btn.Flat := True;
   btn.Parent := panel;
   btn.Align := alTop;
   btn.Height := 45;
end;

procedure TMenu.AddSubItem(nomeItem, CaptionItem, MenuItem: String);
var
   panel : TPanel;
   btn : TSpeedButton ;
begin
   panel := TPanel.Create(TPanel(Screen.FindComponent('pnl' + MenuItem)));
   panel.Parent := TPanel(Screen.FindComponent('pnl' + MenuItem));
   panel.Align := alTop;
   panel.Name := 'pnl' + nomeItem;
   panel.Height := 40;
   panel.Caption := '';


   btn := TSpeedButton.Create(panel);
   btn.Name := 'btn' + nomeItem;
   btn.Caption := captionItem;
   btn.Flat := True;
   btn.Parent := panel;
   btn.Align := alTop;
   btn.Height := 40;
end;

constructor TMenu.Create(Panel: TPanel);
begin
   fsPanel := Panel;
end;

destructor TMenu.Destroy;
begin
   fsPanel.DisposeOf;
end;

end.
