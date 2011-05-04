{ *************************************************************************** }
{                                                                             }
{ NLDKeyboardBinding  -  www.nldelphi.com Open Source Delphi IDE extension    }
{                                                                             }
{ Initiator: Albert de Weerd (aka NGLN)                                       }
{ License: Free to use, free to modify                                        }
{ SVN path:                                                                   }
{   http://svn.nldelphi.com/nldelphi/opensource/ngln/NLDKeyboardBinding       }
{                                                                             }
{ *************************************************************************** }
{                                                                             }
{ Date: May 4, 2011                                                           }
{ Version: 1.0.0.0                                                            }
{                                                                             }
{ *************************************************************************** }

unit NLDKeyboardBinding;

interface

uses
  Classes, ToolsAPI, Menus;

type
  TNLDKeyboardBinding = class(TNotifierObject, IOTAKeyboardBinding)
  private
    procedure ToggleLockControls(const Context: IOTAKeyContext;
      KeyCode: TShortcut; var BindingResult: TKeyBindingResult);
  public
    procedure BindKeyboard(const BindingServices: IOTAKeyBindingServices);
    function GetBindingType: TBindingType;
    function GetDisplayName: String;
    function GetName: String;
  end;

implementation

{ TNLDKeyboardBinding }

procedure TNLDKeyboardBinding.BindKeyboard(
  const BindingServices: IOTAKeyBindingServices);
begin
  BindingServices.AddKeyBinding([TextToShortCut('Ctrl+L')], ToggleLockControls,
    nil, kfImplicitShift, '', 'EditLockControlsItem');
end;

function TNLDKeyboardBinding.GetBindingType: TBindingType;
begin
  Result := btPartial;
end;

function TNLDKeyboardBinding.GetDisplayName: String;
begin
  Result := 'NLDelphi Keyboard Binding';
end;

function TNLDKeyboardBinding.GetName: String;
begin
  Result := 'NLDelphi.Default';
end;

procedure TNLDKeyboardBinding.ToggleLockControls(const Context: IOTAKeyContext;
  KeyCode: TShortcut; var BindingResult: TKeyBindingResult);
begin
  BindingResult := krUnhandled;
end;

end.
