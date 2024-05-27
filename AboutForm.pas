unit AboutForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, pngimage, ExtCtrls, ShellAPI, ComCtrls;

type
  TFormAbout = class(TForm)
    PanelSupport: TPanel;
    Label2: TLabel;
    Label_sc2tv_site: TLabel;
    PanelInfoVer: TPanel;
    LabelSC2PlayerVersion: TLabel;
    LabelSC2PlayerPowered: TLabel;
    LabelProgVer: TLabel;
    Image1: TImage;
    MemoLicence: TMemo;
    Button1: TButton;
    procedure Label_sc2tv_siteClick(Sender: TObject);
    procedure Label_goodgame_siteClick(Sender: TObject);
    procedure Label1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormAbout: TFormAbout;

implementation

uses MainForm;

{$R *.dfm}

procedure TFormAbout.FormCreate(Sender: TObject);
begin
LabelSC2PlayerVersion.Caption:= FormMain.GetVerProg;
end;

procedure TFormAbout.Label_sc2tv_siteClick(Sender: TObject);
begin
ShellExecute(Handle, 'open', PChar('http://sc2tv.ru/'), nil, nil, SW_SHOW);
end;

end.
