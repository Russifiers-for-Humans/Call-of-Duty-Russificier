; Инструкция https://jrsoftware.org/ishelp/index.php

; Всегда меняются
#define GameName "Call of Duty"                                          ; Название игры
#define GameNameDash "Call-of-Duty"                                                          ; Название игры без пробелов
#define GameNameEXE "CoDSP"                                                              ; Название exe файла игры
#define GameVer "1.3"                                                                     ; Версия игры
#define GameAppIdSteam "2620"                                                             ; Ид игры в стиме
; От ситуации зависит
#define AppDescription "Русификатор текста и звука"                                     ; Описание программы
#define Typ "Russificier"                                                                    ; Тип приложения
; Практически никогда не меняется
#define AppVer "1.0"                                                                        ; Версия установщика
#define Platz "C:\Users\TeMeR\Documents\GitHub"                                                    ; Место
; Константы
#define Copyright "Folk"                                                                  ; (констант)Копирайт
#define AppPublisher "Russifiers for Humans"                                              ; (констант)Название инициативы
#define AppPublisherDash "Russifiers-for-Humans"                                              ; (констант)Название инициативы
#define PublisherURL "https://steamcommunity.com/id/TeMeR55"                              ; (констант)Ссылка на автора
#define AppURL "https://github.com/" + AppPublisherDash + "/" +GameNameDash + "-" + Typ +"/releases"        ; Ссылка на руководство
; Сложные переменные  
#define Location Platz + "\" + GameNameDash + "-" + Typ                                       ; Место нахождение соурса
#define OriginalNameSetup Typ + "-" + GameNameDash                        ; Оригинальное наименование приложения
#define AppNameAndDescript GameName + " - " + AppDescription                              ; Название программы и описание
#define ProductVerName AppNameAndDescript + " для версии " + GameVer                             ; Название программы для какой версии игры в системе

#define UnArcivProg "7zG.EXE"
#define FolderUnArcivProg "7z"
#define Arciv "data.zip.001"
[Setup]
; Номер приложения для его удаление лучше все время не забывать разный совать. Проверка уникальный для: Call of Duty Russificier
AppId={{9799DFC5-809C-4F02-9AE1-1CEEF89580E5}
//--------------------------------------App's information and version--------------------------------------\\
; Свойства приложения
AppName={#AppNameAndDescript}                                                   
AppVersion={#AppVer}
AppVerName={#ProductVerName}
AppCopyright={#Copyright}
AppContact={#PublisherURL}
AppComments={#Typ}
AppPublisher={#AppPublisher}
AppPublisherURL={#PublisherURL}
AppSupportURL={#AppURL}
AppUpdatesURL={#AppURL}
AppReadmeFile={#AppURL}
VersionInfoCompany={#AppPublisher}
VersionInfoCopyright={#Copyright}
VersionInfoDescription={#AppDescription}
VersionInfoOriginalFileName={#OriginalNameSetup}  
VersionInfoProductName={#ProductVerName}
VersionInfoProductTextVersion={#AppVer}
VersionInfoVersion={#AppVer}     
//--------------------------------------Options--------------------------------------\\
; Если установлено значение «да», программа установки отобразит флажок «Не создавать папку в меню «Пуск»
AllowNoIcons=yes
; Имя папки в меню «Пуск»
DefaultGroupName={#AppPublisher}
; Путь по умолчанию
DefaultDirName={code:GetInstallationPath}
; Название установщика
OutputBaseFilename={#OriginalNameSetup}
; Если установлено значение «нет», отключает уведомление об "Существующей папке"
DirExistsWarning=no
; Если установлено значение «да», включает уведомление об "Не существующей папке"
EnableDirDoesntExistWarning=yes
;Если установлено значение «нет», включает страницу "Мастер приветствует"
DisableWelcomePage=no    
;Если установлено значение «нет», включает страницу "Спасибо за установку"
DisableFinishedPage=no
//--------------------------------------Compression--------------------------------------\\
;DiskSpanning=true
; Размер в байтах твоего setup1.bin
;DiskSliceSize=314572800 
; Метод сжатия
Compression=lzma2/ultra64
; Если установлено значение «да»,включает сжатие в один поток(лучше сжимает, но проблем больше) 
SolidCompression=yes
LZMAUseSeparateProcess=yes
LZMADictionarySize=1048576
LZMANumFastBytes=273
//--------------------------------------Files--------------------------------------\\
; Путь к фалу Лицензии
LicenseFile={#Location}\Licence.rtf
; Путь к фалу Описание
InfoBeforeFile={#Location}\Description.rtf                      
;InfoAfterFile=infoafter.txt
; Путь к фалу Иконка
SetupIconFile={#Location}\Icon.ico
; Путь к фалу Сетап
OutputDir={#Location}\
; Путь к фалу Картинки
WizardImageFile={#Location}\Pic.bmp
; Путь к фалу Картинки
WizardSmallImageFile={#Location}\Pic.bmp

[Components]
Name: "Rus";    Description: "Русификатор"; Types: Full
Name: "Rus\Old";    Description: "Старый Русификатор"; Types: Full;Flags:exclusive
Name: "Rus\Old\Main";    Description: "Call of Duty"; Types: Full
Name: "Rus\Old\UO";    Description: "Call of Duty: United Offensive"; Types: Full
Name: "Rus\New";    Description: "Улучшенный Русификатор"; Types: custom;Flags:exclusive
Name: "Rus\New\Main";    Description: "Call of Duty"; Types: custom
Name: "Rus\New\UO";    Description: "Call of Duty: United Offensive"; Types: custom
Name: "Resolution";    Description: "Разрешение экрана"; Types: Full
Name: "Resolution\FullHD";    Description: "FullHD(1920x1080)"; Types: Full;Flags:exclusive
Name: "Resolution\QHD";    Description: "QuadHD(2560x1440)"; Types: custom ;Flags:exclusive
Name: "Resolution\UHD";    Description: "UltraHD(3840x2160)"; Types: custom;Flags:exclusive
Name: "HD_textures";    Description: "HD текстуры"; Types: Full

[Files]
; Ресурсы
Source: {#Location}\{#FolderUnArcivProg}\*;  DestDir: "{tmp}";      Flags: deleteafterinstall
;Source: {#Location}\{#GameName}\*;          DestDir: "{app}";      Flags: ignoreversion recursesubdirs createallsubdirs
Source: {#Location}\{#GameName}\Rus\New\Main\*;  DestDir: "{app}\Main"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: Rus\New\Main
Source: {#Location}\{#GameName}\Rus\New\UO\*;  DestDir: "{app}\UO"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: Rus\New\UO
Source: {#Location}\{#GameName}\Rus\New\Launcher\*;  DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: Rus\New\Main Rus\New\UO
Source: {#Location}\{#GameName}\Rus\Old\Main\*;  DestDir: "{app}\Main"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: Rus\Old\Main
Source: {#Location}\{#GameName}\Rus\Old\UO\*;  DestDir: "{app}\UO"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: Rus\Old\UO
Source: {#Location}\{#GameName}\zip\New\Main\*;       DestDir: "{tmp}";      Flags: deleteafterinstall;Components: Rus\New\Main
Source: {#Location}\{#GameName}\zip\New\UO\*;       DestDir: "{tmp}";      Flags: deleteafterinstall;Components: Rus\New\UO
Source: {#Location}\{#GameName}\zip\Old\Main\*;       DestDir: "{tmp}";      Flags: deleteafterinstall;Components: Rus\Old\Main
Source: {#Location}\{#GameName}\zip\Old\UO\*;       DestDir: "{tmp}";      Flags: deleteafterinstall;Components: Rus\Old\UO
Source: {#Location}\{#GameName}\Resolution\Main\FullHD\*;    DestDir: "{app}\Main";      Flags: ignoreversion recursesubdirs createallsubdirs; Components: Resolution\FullHD
Source: {#Location}\{#GameName}\Resolution\UO\FullHD\*;    DestDir: "{app}\UO";      Flags: ignoreversion recursesubdirs createallsubdirs; Components: Resolution\FullHD
Source: {#Location}\{#GameName}\Resolution\Main\QHD\*;    DestDir: "{app}\Main";      Flags: ignoreversion recursesubdirs createallsubdirs; Components: Resolution\QHD
Source: {#Location}\{#GameName}\Resolution\UO\QHD\*;    DestDir: "{app}\UO";      Flags: ignoreversion recursesubdirs createallsubdirs; Components: Resolution\QHD
Source: {#Location}\{#GameName}\Resolution\Main\UHD\*;    DestDir: "{app}\Main";      Flags: ignoreversion recursesubdirs createallsubdirs; Components: Resolution\UHD
Source: {#Location}\{#GameName}\Resolution\UO\UHD\*;    DestDir: "{app}\UO";      Flags: ignoreversion recursesubdirs createallsubdirs; Components: Resolution\UHD
Source: "{tmp}\HD_textures.zip.001";        DestDir: "{tmp}"; Flags: external deleteafterinstall; ExternalSize:  2146435072; Components: HD_textures
Source: "{tmp}\HD_textures.zip.002";        DestDir: "{tmp}"; Flags: external deleteafterinstall; ExternalSize:  1827909632; Components: HD_textures
[Icons]
; Ярлык
Name: "{userprograms}\{#AppPublisher}\{#GameName}\{cm:ProgramOnTheWeb,{#ProductVerName}}"; Filename: "{#AppURL}"
; Ярлык
Name: "{userprograms}\{#AppPublisher}\{#GameName}\{cm:UninstallProgram,{#ProductVerName}}"; Filename: "{uninstallexe}"

[Run]
 ;На финальной страницу спрашивает о запуске финального продукта
;Filename: "{tmp}\{#UnArcivProg}"; Parameters: "x {tmp}\{#Arciv} -y -o""{app}"""
Filename: "{tmp}\{#UnArcivProg}"; Parameters: "x {tmp}\Main.zip.001 -y -o""{app}\Main"""; Components: Rus\Old\Main Rus\New\Main 
Filename: "{tmp}\{#UnArcivProg}"; Parameters: "x {tmp}\UO.zip.001 -y -o""{app}\UO""";     Components: Rus\Old\UO Rus\New\UO    
Filename: "{tmp}\{#UnArcivProg}"; Parameters: "x {tmp}\HD_textures.zip.001 -y -o""{app}""";     Components: HD_textures    
[UninstallDelete]
Type: files;          Name: "{app}\Main\localized_russian_pak0.pk3"; Components: Rus\Old\Main Rus\New\Main      
Type: files;          Name: "{app}\Main\localized_russian_pak1.pk3"; Components: Rus\Old\Main Rus\New\Main      
Type: files;          Name: "{app}\UO\localized_russian_pakuo00.pk3"; Components: Rus\Old\UO Rus\New\UO     
Type: files;          Name: "{app}\zcod1.pk3"; Components: HD_textures     
Type: files;          Name: "{app}\zcod2.pk3"; Components: HD_textures     
Type: files;          Name: "{app}\zcod3.pk3"; Components: HD_textures     
Type: files;          Name: "{app}\zcod4.pk3"; Components: HD_textures     
Type: files;          Name: "{app}\zcod5.pk3"; Components: HD_textures     
Type: files;          Name: "{app}\zcod6.pk3"; Components: HD_textures     
Type: files;          Name: "{app}\zcod7.pk3"; Components: HD_textures         

[Code]
var
  InstallationPath: string;

function GetInstallationPath(Param: string): string;
    
begin
  { Обнаруженный путь кэшируется, так как он вызывается несколько раз }
  
  if InstallationPath = '' then
  begin
    if RegQueryStringValue(
         HKLM64, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\Steam App {#GameAppIdSteam}',
         'InstallLocation', InstallationPath) then
    begin
      Log('Detected Steam installation: ' + InstallationPath);
    end
    // для гог
    //  else
    //if RegQueryStringValue(
    //     HKLM32, 'SOFTWARE\GOG.com\Games\1196955511',
    //     'path', InstallationPath) then
    //begin
    //  Log('Detected GOG installation: ' + InstallationPath);
    //end
      else
    begin
      if IsWin64 then InstallationPath := ExpandConstant('{commonpf64}')
      else InstallationPath := ExpandConstant('{commonpf32}');
      InstallationPath:=InstallationPath +'/{#GameName}';
      Log('No installation detected, using the default path: ' + InstallationPath);
    end;
  end;
  Result := InstallationPath;
end;


//Downloader
var
  DownloadPage: TDownloadWizardPage;

function OnDownloadProgress(const Url, FileName: String; const Progress, ProgressMax: Int64): Boolean;
begin
  if Progress = ProgressMax then
    Log(Format('Successfully downloaded file to {tmp}: %s', [FileName]));
  Result := True;
end;

procedure InitializeWizard;
begin
  DownloadPage := CreateDownloadPage(SetupMessage(msgWizardPreparing), SetupMessage(msgPreparingDesc), @OnDownloadProgress);
end;
function NextButtonClick(CurPageID: Integer): Boolean;
begin
  if CurPageID = wpReady then begin
    DownloadPage.Clear;// sha256 7z
    if IsComponentSelected('HD_textures') then begin
      DownloadPage.Add('https://github.com/Russifiers-for-Humans/Call-of-Duty-Russificier/releases/download/Final/HD_textures.zip.001', 'HD_textures.zip.001', '180b3a92b1ba374fdcdcda224c960868cf055b37db36a4af544036aab8beee15');
    end;
    if IsComponentSelected('HD_textures') then begin
      DownloadPage.Add('https://github.com/Russifiers-for-Humans/Call-of-Duty-Russificier/releases/download/Final/HD_textures.zip.002', 'HD_textures.zip.002', '39b96d41324f077aebf2fbe3541326d4a2d899d42b533b5d8f14aca63a7b7606');
    end;
    DownloadPage.Show;
    try
      try
        DownloadPage.Download; // This downloads the files to {tmp}
        Result := True;
      except
        if DownloadPage.AbortedByUser then
          Log('Aborted by user.')
        else
          SuppressibleMsgBox(AddPeriod(GetExceptionMessage), mbCriticalError, MB_OK, IDOK);
        Result := False;
      end;
    finally
      DownloadPage.Hide;
    end;
  end else
    Result := True;
end;

[Languages]
Name: "russian"; MessagesFile: "compiler:Languages\Russian.isl";