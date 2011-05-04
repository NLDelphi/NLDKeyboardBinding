unit NLDKeyboardBindingReg;

interface

uses
  ToolsAPI, NLDKeyboardBinding;

procedure Register;

implementation

procedure Register;
var
  Services: IOTAKeyboardServices;
begin
  if BorlandIDEServices <> nil then
  begin
    Services := BorlandIDEServices as IOTAKeyboardServices;
    Services.AddKeyboardBinding(TNLDKeyboardBinding.Create);
  end;
end;

end.
