[Setup]
AppName=VidaNovaSGN
AppVersion=VidaNovaSGN
;AppVerName={#MyAppName} {#MyAppVersion}
;AppPublisher={#MyAppPublisher}
;AppPublisherURL={#MyAppURL}
;AppSupportURL={#MyAppURL}
;AppUpdatesURL={#MyAppURL}
DefaultDirName=C:\VidaNovaSGN
DefaultGroupName=VidaNovaSGN - Sistema
InfoBeforeFile=
OutputDir=C:\Users\BRUNO BATISTA\Documents\ivi-codes\client-projs\VidaNovaSGN\InnoSetup
OutputBaseFilename=vidanovasgn_instalador
Compression=lzma
SolidCompression=true
PrivilegesRequired=admin
UsePreviousAppDir=false
CreateAppDir=true
AppID={{095EC68D-425F-4312-B6FA-2EDACE3278D9}
DisableStartupPrompt=true
UsePreviousTasks=true
DisableReadyMemo=false
ShowLanguageDialog=no
LanguageDetectionMethod=locale
UninstallDisplayIcon={app}\Binarios\VidaNovaSGN.exe
InternalCompressLevel=normal
DisableDirPage=true
AllowRootDirectory=true
DisableFinishedPage=false
SetupLogging=true
AlwaysShowDirOnReadyPage=true
AlwaysShowGroupOnReadyPage=true
DisableProgramGroupPage=false
AppPublisherURL=batista.bjs@gmail.com
AppSupportURL=batista.bjs@gmail.com
UninstallDisplayName=VidaNovaSGN
AppCopyright=Bruno Batista
WizardImageFile=compiler:WizModernImage-IS.bmp
WizardSmallImageFile=compiler:WizModernSmallImage-IS.bmp


[Icons]
;Name: {userdesktop}\IndPCP Sistema; Filename: {app}\Binarios\IndPCP.exe; IconFilename: {app}\Binarios\IndPCP.exe; Comment: IndPCP Sistema; IconIndex: 0; Languages:
Name: {group}\VidaNovaSGN; Filename: {app}\Binarios\VidaNovaSGN.exe; WorkingDir: {app}\Binarios; IconFilename: {app}\Binarios\VidaNovaSGN.exe; IconIndex: 0
Name: {commonprograms}\VidaNovaSGN; Filename: {app}\Binarios\VidaNovaSGN.exe; IconIndex: 0; WorkingDir: {app}\Binarios; IconFilename: {app}\Binarios\VidaNovaSGN.exe; Languages: 
Name: {commondesktop}\VidaNovaSGN; Filename: {app}\Binarios\VidaNovaSGN.exe; Tasks: desktopicon; IconIndex: 0; WorkingDir: {app}\Binarios; IconFilename: {app}\Binarios\VidaNovaSGN.exe

[Files]
;------------------------------------------------------------------
; IndPCP
;------------------------------------------------------------------
Source: ..\scr\Core\App\Win32\Release\VidaNovaSGN.exe; DestDir: {app}\Binarios; Languages: ; Flags: ignoreversion
Source: C:\VidaNovaSGN\DB\vidanovasgn.fdb; DestDir: {app}\DB; Flags: ignoreversion
Source: VidaNovaSGN.txt; DestDir: {app}\Binarios

[Languages]
Name: brazilianportuguese; MessagesFile: compiler:Languages\BrazilianPortuguese.isl

[Tasks]
Name: desktopicon; Description: {cm:CreateDesktopIcon}; GroupDescription: {cm:AdditionalIcons}
Name: quicklaunchicon; Description: {cm:CreateQuickLaunchIcon}; GroupDescription: {cm:AdditionalIcons}; OnlyBelowVersion: 0,6.1

[UninstallDelete]
Name: C:\VidaNovaSGN; Type: filesandordirs; Tasks: ; Languages: 
