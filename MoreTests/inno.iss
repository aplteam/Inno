#define MyAppVersion "1.1.0"
#define MyAppName "foo"
#define MyAppPublisher "Foo Ltd"
#define MyAppURL "foo.com"
#define MyAppExeName "foo.dws"
#define MyBlank " "
#define TargetDir "Dist\"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
AppId={{F16EFC1D-1862-3F50-91F1-2D54B0789875}

AppName="{#MyAppName}"
AppVersion={#MyAppVersion}
AppVerName={#MyAppName}{#MyBlank}{#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName=Installed\\{#MyAppName}
DefaultGroupName={#MyAppPublisher}\{#MyAppName}
AllowNoIcons=yes
OutputDir=C:/Users/kai/AppData/Local/Temp/InnoTempDir    
OutputBaseFilename="SetUp_{#MyAppName}_{#MyAppVersion}"
Compression=lzma
SolidCompression=yes
;SetupIconFile={#MyAppIcoName}
PrivilegesRequired=Lowest
AlwaysShowDirOnReadyPage=no
DisableWelcomePage=no
DisableDirPage=no
CreateUninstallRegKey=no
UsePreviousAppDir=no

[Languages]

[Registry]

[Dirs]

[Files]
Source: "{#TargetDir}\{#MyAppExeName}"; DestDir: "{src}\\Installed\\foo"

[Icons]

[Run]


[Tasks]

[Code]
