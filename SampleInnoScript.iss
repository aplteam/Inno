# Sample script that should give you an idea

#define MyAppVersion "9.3.0+211"
#define MyAppName "SampleInnoScript"
#define MyAppExeName "SampleInnoScript.dws"
#define MyAppPublisher "Your company"
#define MyAppURL "https://github.com/aplteam/SampleInnoScript"
#define MyAppIcoName "SampleInnoScript.ico"
#define MyBlank " "
#define TargetDir "Dist\"               ; Distribution folder

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
AppId={{...}                            ; Inject a UUID for your application

AppName="{#MyAppName}"
AppVersion={#MyAppVersion}
AppVerName={#MyAppName}{#MyBlank}{#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={userdocs}\\MyUCMDs\\{#MyAppName}
DefaultGroupName={#MyAppPublisher}\{#MyAppName}
AllowNoIcons=yes
OutputDir={tmp}/InnoTempDir      
OutputBaseFilename="SetUp_{#MyAppName}_{#MyAppVersion}"
Compression=lzma
SolidCompression=yes
SetupIconFile={#MyAppIcoName}
PrivilegesRequired=Lowest
AlwaysShowDirOnReadyPage=yes
DisableWelcomePage=no
DisableDirPage=no
CreateUninstallRegKey=no

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"; LicenseFile: "License";

[Registry]

[Dirs]

[Files]
Source: "{#TargetDir}\SampleInnoScript_UserCommand.dyalog"; DestDir: "{app}\..\";
Source: "{#TargetDir}\SampleInnoScript\UserGuide.html"; DestDir: "{app}";
Source: "{#TargetDir}\SampleInnoScript\ReadMe.html"; DestDir: "{app}";
Source: "{#TargetDir}\SampleInnoScript\{#MyAppExeName}"; DestDir: "{app}"
Source: "{#TargetDir}packages\*"; DestDir: "{app}"; Flags: recursesubdirs
Source: "LICENSE"; DestDir: "{app}"
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]

[Run]
Filename: "{app}\ReleaseNotes.html"; Description: "View the Release Notes"; Flags: postinstall shellexec skipifsilent

[Tasks]

[Code]
