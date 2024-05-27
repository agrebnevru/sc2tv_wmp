unit RegAsso;

interface

uses
  Registry, Classes;

type
  TRegAsso = class(TComponent)
  private
    ext:string;
    des:string;
    exe:string;
  public
    procedure Asso;
    procedure UnAsso;
    function Check : Boolean;
  published
    property ExeName : String read exe  write exe;
    property Description : String read des  write des;
    property Extension : String read ext write ext;
  end;

const HKEY_CLASSES_ROOT = longWord($80000000);

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('Romodos',[TRegAsso]);
end;

procedure TRegAsso.asso;
var reg:TRegistry;
begin 
  reg := TRegistry.Create;
  reg.RootKey := HKEY_CLASSES_ROOT;
  reg.OpenKey(ext,true);
  reg.WriteString('', des);
  reg.CloseKey;
  reg.OpenKey(des,true);
  reg.WriteString('',des);
  reg.Openkey('DefaultIcon',true);
  reg.WriteString('', exe + ', 0');
  reg.CloseKey;
  reg.OpenKey(des+'\Shell\Open',true);
  reg.WriteString('','&Open');  
  reg.OpenKey('Command', true);
  reg.WriteString('', '"'+ exe+'"' + ' "%1"');
  reg.CloseKey;
  reg.Free;
end; 

procedure TRegAsso.unasso;
var reg:TRegistry;
    st:string;
begin
  reg := TRegistry.Create;
  reg.RootKey := HKEY_CLASSES_ROOT;
  if not reg.OpenKey(ext,false) then exit;
  st := reg.ReadString('');
  reg.CloseKey;
  reg.DeleteKey(ext);
  if reg.KeyExists(st) then reg.DeleteKey(st);
  reg.Free;
end;

function TRegAsso.check : Boolean;
var reg:TRegistry;
    st:string;
begin
  result := false;
  reg := TRegistry.Create;
  reg.RootKey := HKEY_CLASSES_ROOT;
  if reg.OpenKey(ext,false) then begin
    st := reg.ReadString('');
    reg.CloseKey;
    if reg.OpenKey(st+'\Shell\Open\Command',false) then begin
      if reg.ReadString('') = exe then result := true;
      reg.CloseKey;
    end;
  end;  
  reg.Free;
end;

end.
