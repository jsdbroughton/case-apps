#define MyAppName "CASE Apps"
#define MyAppVersion "23.2.23"
#define MyAppPublisher "CASE"
#define MyAppURL "https://github.com/rudderdon/case-apps"

#define RevitAppName  "Case.Apps"
#define RevitAddinFolder "{userappdata}\Autodesk\REVIT\Addins"
#define RevitFolder20 RevitAddinFolder+"\2020\"+RevitAppName
#define RevitAddin20  RevitAddinFolder+"\2020\"
#define RevitFolder21 RevitAddinFolder+"\2021\"+RevitAppName
#define RevitAddin21  RevitAddinFolder+"\2021\"
#define RevitFolder22 RevitAddinFolder+"\2022\"+RevitAppName
#define RevitAddin22  RevitAddinFolder+"\2022\"
#define RevitFolder23 RevitAddinFolder+"\2023\"+RevitAppName
#define RevitAddin23  RevitAddinFolder+"\2023\"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{1AE796B6-5B97-4CC7-848A-C3F44956FB90}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={pf}\{#MyAppName}
DisableDirPage=yes
DefaultGroupName=CASE Design, Inc\{#MyAppName}
DisableProgramGroupPage=yes
LicenseFile=.\LICENSE
OutputDir=.
OutputBaseFilename=CASEApps-installer
SetupIconFile=assets\logo.ico
WizardImageFile=assets\banner.bmp
Compression=lzma
SolidCompression=yes
;info: http://revolution.screenstepslive.com/s/revolution/m/10695/l/95041-signing-installers-you-create-with-inno-setup
;comment/edit the line below if you are not signing the exe with the CASE pfx
;SignTool=signtoolcase

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Components]
Name: revit20; Description: CASE Apps for Autodesk Revit 2020;  Types: full
Name: revit21; Description: CASE Apps for Autodesk Revit 2021;  Types: full
Name: revit22; Description: CASE Apps for Autodesk Revit 2022;  Types: full
Name: revit23; Description: CASE Apps for Autodesk Revit 2023;  Types: full

[Files]
;REVIT 2020 ~~~~~~~~~~~~~~~~~~~
Source: "deploy\2020\*"; DestDir: "{#RevitFolder20}"; Excludes: "*.pdb,*.xml,*.config,*.addin,*.tmp"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: revit20
Source: "deploy\{#RevitAppName}.addin"; DestDir: "{#RevitAddin20}"; Flags: ignoreversion; Components: revit20

;REVIT 2021 ~~~~~~~~~~~~~~~~~~~
Source: "deploy\2021\*"; DestDir: "{#RevitFolder21}"; Excludes: "*.pdb,*.xml,*.config,*.addin,*.tmp"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: revit21
Source: "deploy\{#RevitAppName}.addin"; DestDir: "{#RevitAddin21}"; Flags: ignoreversion; Components: revit21

;REVIT 2022 ~~~~~~~~~~~~~~~~~~~
Source: "deploy\2022\*"; DestDir: "{#RevitFolder22}"; Excludes: "*.pdb,*.xml,*.config,*.addin,*.tmp"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: revit22
Source: "deploy\{#RevitAppName}.addin"; DestDir: "{#RevitAddin22}"; Flags: ignoreversion; Components: revit22

;REVIT 2023 ~~~~~~~~~~~~~~~~~~~
Source: "deploy\2023\*"; DestDir: "{#RevitFolder23}"; Excludes: "*.pdb,*.xml,*.config,*.addin,*.tmp"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: revit23
Source: "deploy\{#RevitAppName}.addin"; DestDir: "{#RevitAddin23}"; Flags: ignoreversion; Components: revit23

; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{group}\{cm:ProgramOnTheWeb,{#MyAppName}}"; Filename: "{#MyAppURL}"
Name: "{group}\{cm:UninstallProgram,{#MyAppName}}"; Filename: "{uninstallexe}"
