;Made with Inno Setup 5.5.3 Ansi
#include <.\Inno Download Plugin\idp.iss>
#include <.\ISTheme\ISTheme.iss>

#define Net40 = "http://download.microsoft.com/download/9/5/A/95A9616B-7A37-4AF6-BC36-D6EA96C8DAAE/dotNetFx40_Full_x86_x64.exe"
#define XNAredist = "http://download.microsoft.com/download/A/C/2/AC2C903B-E6E8-42C2-9FD7-BEBAC362A930/xnafx40_redist.msi"

[CustomMessages]
InstallingApp=Installing %1, this may take several minutes...
GameNotFound=Red Alert 2 Yuri's Revenge not found in %1 %nPlease select the right folder...%nNote: You need to have the game installed, Red Alert 2 is not freeware and therefore not included in this installer!
CheckFile=ra2md.mix
GameRegEng=SOFTWARE\Westwood\Red Alert 2
DefaultGamePathEng=C:\Westwood\RA2\
TFDDirEnglish=EA Games\Command & Conquer The First Decade\Command & Conquer Red Alert(tm) II\RA2
TFDDirGerman=EA Games\Command & Conquer Die ersten 10 Jahre\Command & Conquer Red Alert(tm) II\RA2
OriginDir=Origin Games\Command and Conquer Red Alert II
TFDReg=Software\Electronic Arts\EA Games\Command and Conquer The First Decade
OriginReg=Software\EA Games\Command and Conquer Red Alert II

[Setup]
AppId={{D22A250A-085F-415E-959E-8DB49F4E4CCA}
AppName=CnCNet5 Yuri's Revenge
AppVersion=1.0
AppVerName=CnCNet5 Yuri's Revenge
AppPublisher=cncnet.org
VersionInfoVersion=1.0.0.0
VersionInfoTextVersion=1.0.0.0
VersionInfoProductName=CnCNet5 Yuri's Revenge
VersionInfoDescription=CnCNet5 Yuri's Revenge
AppPublisherURL=https://cncnet.org
AppSupportURL=https://cncnet.org
AppUpdatesURL=https://cncnet.org
DirExistsWarning=no
DefaultDirName={code:DefaultDir}
DisableProgramGroupPage=yes
DisableReadyPage=yes
DisableWelcomePage=yes
DisableFinishedPage=yes
AllowNoIcons=yes
OutputBaseFilename=CnCNet5_YR_Installer
Compression=lzma2/max
SolidCompression=yes
UsePreviouslanguage=no
CreateUninstallRegKey=yes
UsePreviousAppDir=no
SourceDir=.
OutputDir=.
SetupIconFile=Resources\cncnet5.ico
AppendDefaultDirName=no
ShowLanguageDialog=no
LicenseFile=Resources\License-YurisRevenge.txt

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[InstallDelete]
;Type: files; Name: "{app}\wsock32.dll"; MinVersion: 6.2
Type: files; Name: "{app}\version"

[Files]
Source: ..\*; DestDir: "{app}"; Excludes: ".gitattributes,.gitignore"; Flags: ignoreversion
Source: ..\Resources\*; DestDir: "{app}\Resources"; Flags: ignoreversion
Source: ..\Qt\*; DestDir: "{app}\Qt"; Flags: ignoreversion
Source: ..\Qt\audio\*; DestDir: "{app}\Qt\audio"; Flags: ignoreversion
Source: ..\Qt\bearer\*; DestDir: "{app}\Qt\bearer"; Flags: ignoreversion
Source: ..\Qt\generic\*; DestDir: "{app}\Qt\generic"; Flags: ignoreversion
Source: ..\Qt\iconengines\*; DestDir: "{app}\Qt\iconengines"; Flags: ignoreversion
Source: ..\Qt\imageformats\*; DestDir: "{app}\Qt\imageformats"; Flags: ignoreversion
Source: ..\Qt\mediaservice\*; DestDir: "{app}\Qt\mediaservice"; Flags: ignoreversion
Source: ..\Qt\platforms\*; DestDir: "{app}\Qt\platforms"; Flags: ignoreversion
Source: ..\Qt\playlistformats\*; DestDir: "{app}\Qt\playlistformats"; Flags: ignoreversion
Source: ..\Qt\printsupport\*; DestDir: "{app}\Qt\printsupport"; Flags: ignoreversion
Source: ..\Qt\qmltooling\*; DestDir: "{app}\Qt\qmltooling"; Flags: ignoreversion
Source: ..\Qt\sqldrivers\*; DestDir: "{app}\Qt\sqldrivers"; Flags: ignoreversion
Source: ..\Resources\Binaries\*; DestDir: "{app}\Resources\Binaries"; Flags: ignoreversion
Source: ..\Resources\Binaries\OpenGL\*; DestDir: "{app}\Resources\Binaries\OpenGL"; Flags: ignoreversion
Source: ..\Resources\Binaries\Windows\*; DestDir: "{app}\Resources\Binaries\Windows"; Flags: ignoreversion
Source: ..\Resources\Binaries\XNA\*; DestDir: "{app}\Resources\Binaries\XNA"; Flags: ignoreversion

Source: ..\Resources\Yuri Theme\*; DestDir: "{app}\Resources\Yuri Theme"; Flags: ignoreversion
Source: ..\Resources\Yuri Theme\MainMenu\*; DestDir: "{app}\Resources\Yuri Theme\MainMenu"; Flags: ignoreversion

Source: ..\Resources\Allied Theme\*; DestDir: "{app}\Resources\Allied Theme"; Flags: ignoreversion
Source: ..\Resources\Allied Theme\MainMenu\*; DestDir: "{app}\Resources\Allied Theme\MainMenu"; Flags: ignoreversion

Source: ..\Resources\Soviet Theme\*; DestDir: "{app}\Resources\Soviet Theme"; Flags: ignoreversion
Source: ..\Resources\Soviet Theme\MainMenu\*; DestDir: "{app}\Resources\Soviet Theme\MainMenu"; Flags: ignoreversion

Source: ..\INI\*; DestDir: "{app}\INI"; Flags: ignoreversion
Source: ..\INI\Game Options\*; DestDir: "{app}\INI\Game Options"; Flags: ignoreversion
Source: ..\INI\Map Code\*; DestDir: "{app}\INI\Map Code"; Flags: ignoreversion
Source: ..\Maps\Custom\*; DestDir: "{app}\Maps\Custom"; Flags: ignoreversion
Source: ..\Maps\Yuri's Revenge\*; DestDir: "{app}\Maps\Yuri's Revenge"; Flags: ignoreversion
Source: ..\Maps\Yuri's Revenge\CTF\*; DestDir: "{app}\Maps\Yuri's Revenge\CTF\"; Flags: ignoreversion
Source: ..\Maps\Yuri's Revenge\Demolition\*; DestDir: "{app}\Maps\Yuri's Revenge\Demolition\"; Flags: ignoreversion
Source: ..\Maps\Yuri's Revenge\Standard\*; DestDir: "{app}\Maps\Yuri's Revenge\Standard\"; Flags: ignoreversion
Source: ..\Maps\Yuri's Revenge\Tournament\*; DestDir: "{app}\Maps\Yuri's Revenge\Tournament\"; Flags: ignoreversion
Source: ..\Map Renderer\*; DestDir: "{app}\Map Renderer"; Flags: ignoreversion

Source: Resources\Ra2.lcf; DestDir: "{app}"; Flags: ignoreversion uninsneveruninstall
Source: Resources\ra2md.lcf; DestDir: "{app}"; Flags: ignoreversion uninsneveruninstall
Source: Resources\yuri.lcf; DestDir: "{app}"; Flags: ignoreversion uninsneveruninstall

Source: ..\Resources\cnc-ddraw.dll; DestDir: "{app}"; DestName: "ddraw.dll"; Flags: ignoreversion
Source: ..\Resources\cnc-ddraw.ini; DestDir: "{app}"; DestName: "ddraw.ini"; Flags: ignoreversion
Source: Resources\wsock32.dll; DestDir: "{app}"; DestName: "wsock32.dll"; Flags: ignoreversion

Source: Resources\wic_x86_enu.exe; Flags: dontcopy

[Icons]
Name: "{commondesktop}\Yuri's Revenge CnCNet"; Filename: "{app}\CnCNetYRLauncher.exe"; Check: not RunsOnWine
Name: "{app}\Uninstall CnCNet"; Filename: "{uninstallexe}"

[Run]
Filename: "{tmp}\wic_x86_enu.exe"; Parameters: "/q /norestart"; Flags: runascurrentuser; Check: FileExists(ExpandConstant('{tmp}\wic_x86_enu.exe')) and ChangeStatusLabel('Windows Imaging Component')
Filename: "{tmp}\dotNetFx40_Full_x86_x64.exe"; Parameters: "/norestart /passive /showrmui"; Flags: runascurrentuser; Check: FileExists(ExpandConstant('{tmp}\dotNetFx40_Full_x86_x64.exe')) and ChangeStatusLabel('.NET Framework 4.0')
Filename: "msiexec.exe"; Parameters: "-i ""{tmp}\xnafx40_redist.msi"" /quiet /norestart"; Flags: runascurrentuser; Check: FileExists(ExpandConstant('{tmp}\xnafx40_redist.msi')) and ChangeStatusLabel('XNA Framework 4.0')
Filename: "{app}\CnCNetYRLauncher.exe"; WorkingDir: "{app}"; Description: "{cm:LaunchProgram,Yuris Revenge}"; Flags: nowait postinstall runascurrentuser skipifsilent
 
[INI]
Filename: "{app}\RA2MD.ini"; Section: "Video"; Key: "UseGraphicsPatch"; String: "Yes"; MinVersion: 6.2
Filename: "{app}\RA2MD.ini"; Section: "Options"; Key: "Win8Compat"; String: "Yes"; MinVersion: 6.2

Filename: "{app}\RA2MD.INI"; Section: "Video"; Key: "AllowHiResModes"; String: "Yes"
Filename: "{app}\RA2MD.INI"; Section: "Video"; Key: "ScreenWidth"; String: "800"; Flags: createkeyifdoesntexist
Filename: "{app}\RA2MD.INI"; Section: "Video"; Key: "ScreenHeight"; String: "600"; Flags: createkeyifdoesntexist

Filename: "{app}\RA2.INI"; Section: "Video"; Key: "AllowHiResModes"; String: "Yes"
Filename: "{app}\RA2.INI"; Section: "Video"; Key: "ScreenWidth"; String: "800"; Flags: createkeyifdoesntexist
Filename: "{app}\RA2.INI"; Section: "Video"; Key: "ScreenHeight"; String: "600"; Flags: createkeyifdoesntexist

[UninstallDelete]
Type: files; Name: "{app}\version"
Type: files; Name: "{app}\stats.dmp"
Type: files; Name: "{app}\spawnmap.ini"
Type: files; Name: "{app}\spawn.ini"
Type: filesandordirs; Name: "{app}\QM"
Type: filesandordirs; Name: "{app}\Map Renderer"
Type: filesandordirs; Name: "{app}\INI"
Type: filesandordirs; Name: "{app}\Maps"
Type: filesandordirs; Name: "{app}\Qt"
Type: filesandordirs; Name: "{app}\Resources"
Type: filesandordirs; Name: "{app}\Client"

[Registry]
Root: HKLM; Subkey: SOFTWARE\Classes\CLSID\{{1440AD10-6AA8-11D1-B6F9-00A024DDAFD1}\InprocServer32; ValueType: string; ValueData: "blowfish.dll";


Root: HKCU; Subkey: Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers; ValueName: {app}\Ra2.exe; Flags: deletevalue 
Root: HKLM; Subkey: Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers; ValueName: {app}\Ra2.exe; Flags: deletevalue
Root: HKCU64; Subkey: Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers; ValueName: {app}\Ra2.exe; Flags: deletevalue; Check: IsWin64
Root: HKLM64; Subkey: Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers; ValueName: {app}\Ra2.exe; Flags: deletevalue; Check: IsWin64

Root: HKCU; Subkey: Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers; ValueName: {app}\RA2MD.exe; Flags: deletevalue 
Root: HKLM; Subkey: Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers; ValueName: {app}\RA2MD.exe; Flags: deletevalue
Root: HKCU64; Subkey: Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers; ValueName: {app}\RA2MD.exe; Flags: deletevalue; Check: IsWin64
Root: HKLM64; Subkey: Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers; ValueName: {app}\RA2MD.exe; Flags: deletevalue; Check: IsWin64

Root: HKCU; Subkey: Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers; ValueName: {app}\YURI.exe; Flags: deletevalue 
Root: HKLM; Subkey: Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers; ValueName: {app}\YURI.exe; Flags: deletevalue
Root: HKCU64; Subkey: Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers; ValueName: {app}\YURI.exe; Flags: deletevalue; Check: IsWin64
Root: HKLM64; Subkey: Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers; ValueName: {app}\YURI.exe; Flags: deletevalue; Check: IsWin64


Root: HKLM; Subkey: Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers; ValueType: String; ValueName: {app}\gamemd-spawn.exe; ValueData: "16BITCOLOR 8And16BitTimedPriSync HIGHDPIAWARE"
Root: HKCU; Subkey: Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers; ValueType: String; ValueName: {app}\gamemd-spawn.exe; ValueData: "16BITCOLOR 8And16BitTimedPriSync HIGHDPIAWARE"
Root: HKCU64; Subkey: Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers; ValueType: String; ValueName: {app}\gamemd-spawn.exe; ValueData: "16BITCOLOR 8And16BitTimedPriSync HIGHDPIAWARE"; Check: IsWin64
Root: HKLM64; Subkey: Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers; ValueType: String; ValueName: {app}\gamemd-spawn.exe; ValueData: "16BITCOLOR 8And16BitTimedPriSync HIGHDPIAWARE"; Check: IsWin64

Root: HKLM; Subkey: Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers; ValueType: String; ValueName: {app}\gamemd.exe; ValueData: "16BITCOLOR 8And16BitTimedPriSync HIGHDPIAWARE RUNASADMIN"
Root: HKCU; Subkey: Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers; ValueType: String; ValueName: {app}\gamemd.exe; ValueData: "16BITCOLOR 8And16BitTimedPriSync HIGHDPIAWARE RUNASADMIN"
Root: HKCU64; Subkey: Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers; ValueType: String; ValueName: {app}\gamemd.exe; ValueData: "16BITCOLOR 8And16BitTimedPriSync HIGHDPIAWARE RUNASADMIN"; Check: IsWin64
Root: HKLM64; Subkey: Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers; ValueType: String; ValueName: {app}\gamemd.exe; ValueData: "16BITCOLOR 8And16BitTimedPriSync HIGHDPIAWARE RUNASADMIN"; Check: IsWin64

Root: HKLM; Subkey: Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers; ValueType: String; ValueName: {app}\game.exe; ValueData: "16BITCOLOR 8And16BitTimedPriSync HIGHDPIAWARE RUNASADMIN"
Root: HKCU; Subkey: Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers; ValueType: String; ValueName: {app}\game.exe; ValueData: "16BITCOLOR 8And16BitTimedPriSync HIGHDPIAWARE RUNASADMIN"
Root: HKCU64; Subkey: Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers; ValueType: String; ValueName: {app}\game.exe; ValueData: "16BITCOLOR 8And16BitTimedPriSync HIGHDPIAWARE RUNASADMIN"; Check: IsWin64
Root: HKLM64; Subkey: Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers; ValueType: String; ValueName: {app}\game.exe; ValueData: "16BITCOLOR 8And16BitTimedPriSync HIGHDPIAWARE RUNASADMIN"; Check: IsWin64

Root: HKCU; Subkey: Software\Wine\AppDefaults\gamemd-spawn.exe\DllOverrides; ValueType: string; ValueName: "ddraw"; ValueData: "native, builtin"; Check: RunsOnWine
Root: HKCU; Subkey: Software\Wine\AppDefaults\gamemd-spawn.exe\DllOverrides; ValueType: string; ValueName: "wsock32"; ValueData: "native, builtin"; Check: RunsOnWine

Root: HKCU; Subkey: Software\Wine\AppDefaults\gamemd.exe\DllOverrides; ValueType: string; ValueName: "ddraw"; ValueData: "native, builtin"; Check: RunsOnWine
Root: HKCU; Subkey: Software\Wine\AppDefaults\gamemd.exe\DllOverrides; ValueType: string; ValueName: "wsock32"; ValueData: "native, builtin"; Check: RunsOnWine

Root: HKCU; Subkey: Software\Wine\AppDefaults\game.exe\DllOverrides; ValueType: string; ValueName: "ddraw"; ValueData: "native, builtin"; Check: RunsOnWine
Root: HKCU; Subkey: Software\Wine\AppDefaults\game.exe\DllOverrides; ValueType: string; ValueName: "wsock32"; ValueData: "native, builtin"; Check: RunsOnWine


;Root: HKLM; Subkey: Software\Westwood\Yuri's Revenge; ValueType: String; ValueName: Serial; ValueData: "{code:RandomString}"; Flags: createvalueifdoesntexist
;Root: HKLM; Subkey: Software\Westwood\Red Alert 2; ValueType: String; ValueName: Serial; ValueData: "{code:RandomString}"; Flags: createvalueifdoesntexist


[Code]
function GetModuleHandleA(lpLibFileName: PAnsiChar): THandle;
external 'GetModuleHandleA@kernel32.dll stdcall';
function GetProcAddress(Module: THandle; ProcName: PAnsiChar): Longword;
external 'GetProcAddress@kernel32.dll stdcall';

function RunsOnWine(): boolean;
begin
  Result := GetProcAddress(GetModuleHandleA('ntdll.dll'), 'wine_get_version')<> 0;
end;

function IsWineSnap(): Boolean;
var
  s: String;  
begin
  Result := False;

  if RunsOnWine() and 
    RegQueryStringValue(HKLM, 'Software\Microsoft\Windows NT\CurrentVersion\Fonts', 'Tahoma (TrueType)', s) and
    (Pos('Z:\snap\', s) = 1) then
       Result := True;

end;

function RandomString(Param: String): String;
begin
  Result := IntToStr(Random(99999999));
end;

function DefaultDir(Param: String): String;
var
  gamepath: String;
begin
  gamepath:=ExtractFilePath(ExpandConstant('{reg:HKLM\{cm:GameRegEng},InstallPath|{cm:DefaultGamePathEng}}'));
  if (not FileExists(gamepath+ExpandConstant('\{cm:CheckFile}'))) then
    gamepath:=ExpandConstant('{reg:HKLM\{cm:TFDReg},r2_folder|{pf}\{cm:TFDDirEnglish}}');
  if (not FileExists(gamepath+ExpandConstant('\{cm:CheckFile}'))) then
    gamepath:=ExpandConstant('{reg:HKLM\{cm:OriginReg},Install Dir|{pf}\{cm:OriginDir}}');
  if (not FileExists(gamepath+ExpandConstant('\{cm:CheckFile}'))) then
    gamepath:=ExpandConstant('{pf}\{cm:TFDDirEnglish}');
  if (not FileExists(gamepath+ExpandConstant('\{cm:CheckFile}'))) then
    gamepath:=ExpandConstant('{pf}\{cm:TFDDirGerman}');
  if (not FileExists(gamepath+ExpandConstant('\{cm:CheckFile}'))) then
    gamepath:=ExpandConstant('{pf}\{cm:OriginDir}');
  if (not FileExists(gamepath+ExpandConstant('\{cm:CheckFile}'))) then
    gamepath:=ExpandConstant('{cm:DefaultGamePathEng}');

  Result := gamepath;
end;

function NextButtonClick(CurPage: Integer): Boolean;
var
  ErrorCode: Integer;
begin
  if (CurPage = wpSelectDir) then
  begin
    if (not FileExists(ExpandConstant('{app}\{cm:CheckFile}'))) then
    begin
      MsgBox(FmtMessage(ExpandConstant('{cm:GameNotFound}'), [WizardForm.DirEdit.Text]), mbConfirmation, MB_OK);
      Result:=false;
    end
    else Result:=true;
  end
  else result:=true;
end;

function ChangeStatusLabel(AppName: String): Boolean;
begin
  WizardForm.FilenameLabel.Caption := FmtMessage(ExpandConstant('{cm:InstallingApp}'), [AppName]);
  Result := true;
end;

procedure InitializeWizard();
begin
  idpDownloadAfter(wpReady);
  idpSetOption('DetailedMode', '1');
  idpSetOption('RetryButton',    '0');
  idpSetOption('DetailsButton',  '0');
  idpSetOption('AllowContinue',  '0');      
  idpSetOption('UserAgent',      'Mozilla/5.0 (Windows NT 5.1; rv:18.0) Gecko/20100101 Firefox/18.0');
  
  ISTheme();

  // # license radio text color
  WizardForm.LicenseAcceptedRadio.Font.Color := {#ISThemeTextBoxForeColor};
  WizardForm.LicenseAcceptedRadio.Color := {#ISThemeTextBoxBackColor};
  WizardForm.LicenseNotAcceptedRadio.Font.Color := {#ISThemeTextBoxForeColor};
  WizardForm.LicenseNotAcceptedRadio.Color := {#ISThemeTextBoxBackColor};
end;

procedure CurPageChanged(CurPageID: Integer);
  begin
  if (CurPageID = wpSelectDir) then
  begin
    WizardForm.NextButton.Caption := SetupMessage(msgButtonInstall);
    WizardForm.BackButton.Visible := false;
  end;
end;

function NET4installed(): Boolean;
var
  installed: Cardinal;
begin
  Result := false;

  if RegQueryDWordValue(HKLM, 'SOFTWARE\Microsoft\NET Framework Setup\NDP\v4\Full', 'Install', installed) and 
    (installed = 1) then
      Result := true;
  
  // client profile doesn't seem to be supported...
  //if RegQueryDWordValue(HKLM, 'SOFTWARE\Microsoft\NET Framework Setup\NDP\v4\Client', 'Install', installed) and 
  //  (installed = 1) then
  //    Result := true;
end;

function InitializeSetup(): Boolean;
var
  Version: TWindowsVersion;
begin
  GetWindowsVersionEx(Version);
  Result := true;

  if RunsOnWine() then exit;

  if not NET4installed then
  begin
    idpAddFile('{#Net40}', ExpandConstant('{tmp}\dotNetFx40_Full_x86_x64.exe'));

    if (Version.Major < 6) then
      ExtractTemporaryFile('wic_x86_enu.exe');

  end

  if (Version.Major < 6) or ((Version.Major = 6) and (Version.Minor = 0)) then
    idpAddFile('{#XNAredist}', ExpandConstant('{tmp}\xnafx40_redist.msi'));

  
end;
