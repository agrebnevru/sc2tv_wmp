unit MainForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, OleCtrls, WMPLib_TLB, Menus, ImgList, ComCtrls, ToolWin, ExtCtrls,
  registry, StdCtrls, RegAsso;

type
  TFormMain = class(TForm)
    WMP1: TWindowsMediaPlayer;
    DownPanel: TPanel;
    ToolBarMainButtom: TToolBar;
    TBPlay: TToolButton;
    TBPause: TToolButton;
    TBStop: TToolButton;
    TBSound: TToolButton;
    ILIcons: TImageList;
    MM: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    URL1: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    TBSoundVolume: TTrackBar;
    PanelStatus: TPanel;
    OpenDialog1: TOpenDialog;
    N4: TMenuItem;
    function GetVerProg: string;
    procedure N3Click(Sender: TObject);
    procedure TBPlayClick(Sender: TObject);
    procedure TBPauseClick(Sender: TObject);
    procedure TBStopClick(Sender: TObject);
    procedure TBSoundClick(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure URL1Click(Sender: TObject);
    procedure WMP1StatusChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure TBSoundVolumeChange(Sender: TObject);
    procedure WMP1DoubleClick(ASender: TObject; nButton, nShiftState: SmallInt;
      fX, fY: Integer);
    procedure N4Click(Sender: TObject);
  protected
    procedure Getmessage(var msg: TWMCopyData); message WM_COPYDATA;
  private
    { Private declarations }
    procedure SaveProgPosition;
    procedure LoadProgPosition;
    procedure EnabledGeneralButtom;
    procedure DisabledGeneralButtom;
    procedure SettingsLoad;
    procedure SettingsSave;
  public
    { Public declarations }
  end;

var
  FormMain: TFormMain;
  URL: string;
  SC2PlayerP2PVersion: string;

implementation

uses AboutForm, URLForm;

{$R *.dfm}

{------------------- Сохранение/Восстановление позиции begin ------------------}
procedure TFormMain.SaveProgPosition;
var
FIniFile: TRegIniFile;
begin
FIniFile := TRegIniFile.Create('SC2PlayerP2P'); // Инициализирую реестр
FIniFile.OpenKey('SC2PlayerP2P',true); // Открываю раздел
FIniFile.OpenKey('SC2PlayerP2P-PositionMain',true); // Открываю ещё один раздел
if WindowState=wsNormal then
begin
FIniFile.WriteInteger('Option', 'Left', Left);
FIniFile.WriteInteger('Option', 'Top', Top);
end;
FIniFile.WriteInteger('Option', 'WinState', Integer(WindowState));
FIniFile.Free;
end;

procedure TFormMain.LoadProgPosition;
var
FIniFile: TRegIniFile;
begin
FIniFile := TRegIniFile.Create('SC2PlayerP2P');
FIniFile.OpenKey('SC2PlayerP2P',true);
FIniFile.OpenKey('SC2PlayerP2P-PositionMain',true);
Left:=FIniFile.ReadInteger('Option', 'Left', 100);
Top:=FIniFile.ReadInteger('Option', 'Top', 100);
WindowState:=TWindowState(FIniFile.ReadInteger('Option', 'WinState', 2));
FIniFile.Free;
end;
{------------------- Сохранение/Восстановление позиции end-- ------------------}

function TFormMain.GetVerProg: string;
type
TVerInfo=packed record
Nevazhno: array[0..47] of byte; // ненужные нам 48 байт
Minor,Major,Build,Release: word; // а тут версия
end;
var
s:TResourceStream;
v:TVerInfo;
begin
result:='';
	try
	s:=TResourceStream.Create(HInstance ,'#1',RT_VERSION); // достаём ресурс
	if s.Size>0 then
	 	begin
	 	s.Read(v,SizeOf(v)); // читаем нужные нам байты
		result:=IntToStr(v.Major)+'.'+IntToStr(v.Minor)+'.'+ // вот и версия...
		IntToStr(v.Release)+'.'+IntToStr(v. Build);
		end;
	s.Free;
	except;
	end;
end;

procedure TFormMain.EnabledGeneralButtom;
begin
TBPlay.Enabled:= true;
TBPause.Enabled:= true;
TBStop.Enabled:= true;
end;

procedure TFormMain.FormActivate(Sender: TObject);
var
reg: tregistry;
StringParam: string;
RegAssoc: TRegAsso;
f: TStrings;
begin
reg:=tregistry.Create;
////////////////////////////////////////////////////// установка протокола begin
reg.RootKey:=HKEY_Classes_Root;
reg.OpenKey('sop',true);
reg.WriteString('','URL:sop Protocol');
reg.WriteString('URL Protocol','');
reg.OpenKey('DefaultIcon',true);
reg.WriteString('', application.ExeName);
reg.CloseKey;
reg.OpenKey('sop\shell\open\command',true);
reg.WriteString('', application.ExeName+' %1');
reg.CloseKey;
////////////////////////////////////////////////////// установка протокола end
////////////////////////////////////////////////////// установка ассоциаций begin
RegAssoc:=TRegAsso.Create(FormMain);
RegAssoc.ExeName:=Application.ExeName;
RegAssoc.Description:='SopCast files';
RegAssoc.Extension:='.sop';
if not RegAssoc.Check then
  RegAssoc.Asso;
RegAssoc.Free;
////////////////////////////////////////////////////// установка ассоциаций end
reg.RootKey:=HKEY_current_user;
reg.OpenKey('software\sop', true);
reg.WriteInteger('handle', FormMain.Handle);
reg.CloseKey;
reg.Free;
if paramcount>0 then
	begin
   StringParam:= paramstr(1);
   if copy(StringParam, 1, 3)='sop' then
   begin
      WMP1.URL:= StringParam;
      EnabledGeneralButtom
   end
   else if copy(StringParam, 2, 2)=':\' then
   begin
      f:= TStringList.Create();
      f.LoadFromFile(StringParam);
      if copy(f.Strings[0], 1, 3)='sop' then
        WMP1.URL:= f.Strings[0];
      f.Free;
      EnabledGeneralButtom;
   end;
   end;
end;

procedure TFormMain.FormClose(Sender: TObject; var Action: TCloseAction);
var
reg:tregistry;
begin
reg:=tregistry.Create;
reg.RootKey:=HKEY_current_user;
reg.OpenKey('software\sop', true);
reg.WriteInteger('handle', 0);
reg.CloseKey;
reg.Free;

SettingsSave;
SaveProgPosition;
end;

procedure TFormMain.FormCreate(Sender: TObject);
var
reg:tregistry;
begin
WMP1.uiMode:= 'none';
WMP1.settings.autoStart:= true;
DisabledGeneralButtom;
SC2PlayerP2PVersion:= GetVerProg;
SettingsLoad;
LoadProgPosition;

reg:=tregistry.Create;
reg.RootKey:=HKEY_current_user;
reg.OpenKey('software\sop', true);
reg.WriteInteger('handle', FormMain.Handle);
reg.CloseKey;
reg.Free;
end;

procedure TFormMain.Getmessage(var msg: TWMCopyData);
var
sText: array[0..99] of Char;
StringParam: string;
f: TStrings;
begin
StrLCopy(sText, Msg.CopyDataStruct.lpData, Msg.CopyDataStruct.cbData); //Преобразуем полученные данные в строку
if Length(stext)>3 then
	begin
   StringParam:= stext;
   if copy(StringParam, 1, 3)='sop' then
   begin
      WMP1.URL:= StringParam;
      EnabledGeneralButtom
   end
   else if copy(StringParam, 2, 2)=':\' then
   begin
      f:= TStringList.Create();
      f.LoadFromFile(StringParam);
      if copy(f.Strings[0], 1, 3)='sop' then
        WMP1.URL:= f.Strings[0];
      f.Free;
      EnabledGeneralButtom;
   end;
   end;
end;

procedure TFormMain.DisabledGeneralButtom;
begin
TBPlay.Enabled:= false;
TBPause.Enabled:= false;
TBStop.Enabled:= false;
end;

procedure TFormMain.SettingsLoad;
begin
TBSoundVolume.Position:= WMP1.settings.volume;
TBSoundVolume.Hint:= IntToStr(WMP1.settings.volume);
end;

procedure TFormMain.SettingsSave;
begin
//
end;

procedure TFormMain.N3Click(Sender: TObject);
begin
FormAbout.ShowModal;
end;

procedure TFormMain.N4Click(Sender: TObject);
begin
if OpenDialog1.Execute then
begin
  WMP1.URL:= OpenDialog1.FileName;
  EnabledGeneralButtom;
end;
end;

procedure TFormMain.N7Click(Sender: TObject);
begin
if N7.Checked then
	begin
   N7.Checked:= false;
   FormStyle:= fsNormal;
   end
   else
   begin
   N7.Checked:= true;
   FormStyle:= fsStayOnTop;
   end;
end;

procedure TFormMain.TBPauseClick(Sender: TObject);
begin
WMP1.controls.pause;
end;

procedure TFormMain.TBPlayClick(Sender: TObject);
begin
WMP1.controls.play;
end;

procedure TFormMain.TBSoundClick(Sender: TObject);
begin
if WMP1.settings.mute then
begin
  TBSound.ImageIndex:= 3;
  WMP1.settings.mute:= false;
end
else
begin
  TBSound.ImageIndex:= 4;
  WMP1.settings.mute:= true;
end;
end;

procedure TFormMain.TBSoundVolumeChange(Sender: TObject);
begin
WMP1.settings.volume:= TBSoundVolume.Position;
TBSoundVolume.Hint:= IntToStr(TBSoundVolume.Position);
end;

procedure TFormMain.TBStopClick(Sender: TObject);
begin
WMP1.controls.stop;
end;

procedure TFormMain.URL1Click(Sender: TObject);
begin
Caption:= 'SC2 Player p2p';
if FormURL.ShowModal=mrOk then
begin
  EnabledGeneralButtom;
end;
end;

procedure TFormMain.WMP1DoubleClick(ASender: TObject; nButton,
  nShiftState: SmallInt; fX, fY: Integer);
begin
ShowMessage('Double Click!');
if WMP1.fullScreen then
begin
  WMP1.fullScreen:= false;
  WMP1.uiMode:= 'none';
end
else
begin
  if WMP1.playState=3 then
  begin
    WMP1.fullScreen:= true;
    WMP1.uiMode:= 'full';
  end;
end;
end;

procedure TFormMain.WMP1StatusChange(Sender: TObject);
begin
PanelStatus.Caption:= WMP1.status;
sleep(5);
if (WMP1.playState=3) AND (WMP1.currentMedia.imageSourceWidth>5) then
begin
  Width:= WMP1.currentMedia.imageSourceWidth+16;
  Height:= WMP1.currentMedia.imageSourceHeight+96;
  //Label1.Caption:= 'Width:'+IntToStr(WMP1.currentMedia.imageSourceWidth)+'(WMP=)'+IntToStr(WMP1.Width)+'___Height:'+IntToStr(WMP1.currentMedia.imageSourceHeight)+'(WMP=)'+IntToStr(WMP1.Height);
end;
end;

end.
