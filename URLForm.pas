unit URLForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, inifiles;

type
  TFormURL = class(TForm)
    CBStreamURL: TComboBox;
    ButtonCancel: TButton;
    ButtonOk: TButton;
    LabelPastURL: TLabel;
    procedure ButtonOkClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    procedure LoadList;
    procedure SaveList;
  public
    { Public declarations }
  end;

var
  FormURL: TFormURL;
  inifile: tinifile;

implementation

uses MainForm;

{$R *.dfm}

procedure TFormURL.FormShow(Sender: TObject);
begin
LoadList;
end;

procedure TFormURL.LoadList;
begin
if FileExists(extractfilepath(application.ExeName)+'url.list') then
  CBStreamURL.Items.LoadFromFile(extractfilepath(application.ExeName)+'url.list');
end;

procedure TFormURL.SaveList;
var
i: integer;
KeyNeedWrite: boolean;
begin
KeyNeedWrite:= false;
if Length(CBStreamURL.Text)>5 then
begin
  for i:= 0 to CBStreamURL.Items.Count - 1 do
  begin
    if CBStreamURL.Items[i]=CBStreamURL.Text then
    begin
      KeyNeedWrite:= true;
    end;
  end;
if not KeyNeedWrite then
  CBStreamURL.Items.Add(CBStreamURL.Text);
end;
  CBStreamURL.Items.SaveToFile(extractfilepath(application.ExeName)+'url.list');
end;

procedure TFormURL.ButtonOkClick(Sender: TObject);
begin
SaveList;
FormMain.WMP1.Url:= CBStreamURL.Text;
end;

end.
