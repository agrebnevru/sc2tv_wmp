program SC2_Player_P2P;

uses
  Forms,
  windows,
  registry,
  sysutils,
  messages,
  MainForm in 'MainForm.pas' {FormMain},
  URLForm in 'URLForm.pas' {FormURL},
  AboutForm in 'AboutForm.pas' {FormAbout};

{$R *.res}

var
 HM, HForm: THandle;
 reg: tregistry;
 ParamCmd: TCopyDataStruct;

function Check: boolean;
begin
HM:= OpenMutex(MUTEX_ALL_ACCESS, false, 'SC2PlayerP2P');
Result:= (HM <> 0);
if HM=0 then
	HM:= CreateMutex(nil, false, 'SC2PlayerP2P');
end;

begin
if (check)and(paramcount>0) then
	begin
	{Читаем handle запущенного приложения}
	reg:=tregistry.Create;
	reg.RootKey:=HKEY_current_user;
	reg.OpenKey('software\sop', true);
	HForm:=reg.ReadInteger('handle');
	reg.CloseKey;
	reg.Free;
	{Состовляем структуру данных ParamCmd}
	with ParamCmd do
		begin
		dwData:= 0;
		cbdata:= 99;
		lpData:= pchar(paramstr(1));
		end;
	{Посылаем сообщение запущеной программе}
	SendMessage(HForm, WM_COPYDATA, application.Handle, longint(@ParamCmd));
	Exit;
	end;
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'SC2 Player P2P';
  Application.CreateForm(TFormMain, FormMain);
  Application.CreateForm(TFormURL, FormURL);
  Application.CreateForm(TFormAbout, FormAbout);
  Application.Run;
end.
