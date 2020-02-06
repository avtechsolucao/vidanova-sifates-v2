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
AppID={{095EC68D-425F-4312-B6FA-2EDACE3278D8}
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

Name: {group}\PDV NFC-e 4.0; Filename: {app}\Binarios\PDV.exe; WorkingDir: {app}\Binarios; IconFilename: {app}\Binarios\PDV.exe; IconIndex: 0
Name: {commonprograms}\PDV NFC-e 4.0; Filename: {app}\Binarios\PDV.exe; WorkingDir: {app}\Binarios; IconFilename: {app}\Binarios\PDV.exe; Languages: ; IconIndex: 0
Name: {commondesktop}\PDV NFC-e 4.0; Filename: {app}\Binarios\PDV.exe; Tasks: desktopicon; WorkingDir: {app}\Binarios; IconFilename: {app}\Binarios\PDV.exe; IconIndex: 0

[Dirs]
Name: {app}\Binarios
Name: {app}\DB
Name: {app}\DANFE
Name: {app}\Schemas
Name: {app}\Log
Name: {app}\Imagens
Name: {app}\NFe
Name: {app}\NFe\Downloads
Name: {app}\NFe\Eventos
Name: {app}\NFe\Geradas
Name: {app}\NFe\Inutilizadas
Name: {app}\NFe\PDF
Name: {app}\NFe\Salvar
Name: {app}\Essenciais
Name: {app}\Boletos\Layout
Name: {app}\Boletos\Logos\Colorido
Name: {app}\Boletos\Remessa
Name: {app}\Boletos\Retorno
Name: {app}\Firebird

[Files]
;------------------------------------------------------------------
; IndPCP
;------------------------------------------------------------------
Source: ..\scr\Core\App\Win32\Release\VidaNovaSGN.exe; DestDir: {app}\Binarios; Languages: ; Flags: ignoreversion
Source: ..\db\vidanovasgn.fdb; DestDir: {app}\DB; Flags: ignoreversion
Source: VidaNovaSGN.txt; DestDir: {app}\Binarios

;------------------------------------------------------------------
; Venda Expressa
;------------------------------------------------------------------
Source: ..\..\pdv_nfce\Fontes\_projeto\Win32\Release\PDV.exe; DestDir: {app}\Binarios; Flags: ignoreversion

;------------------------------------------------------------------
; ARQUIVOS DLL para a pasta System do Windows
;------------------------------------------------------------------
Source: ..\dll\capicom.dll; DestDir: {sys}; Flags: regserver
Source: ..\DLL\msxml5.dll; DestDir: {sys}; Flags: regserver
Source: ..\DLL\msxml5r.dll; DestDir: {sys}
Source: ..\DLL\libeay32.dll; DestDir: {sys}; Flags: onlyifdoesntexist
Source: ..\DLL\ssleay32.dll; DestDir: {sys}; Flags: onlyifdoesntexist

;------------------------------------------------------------------
; ARQUIVOS DLL para a pasta c:\IndPCP\Binarios
;------------------------------------------------------------------
Source: ..\DLL\fbrmclib.dll; DestDir: {app}\Binarios
Source: ..\DLL\fbclient.dll; DestDir: {app}\Binarios
Source: ..\dll\capicom.dll; DestDir: {app}\Binarios
Source: ..\DLL\iconv.dll; DestDir: {app}\Binarios
Source: ..\DLL\instala.bat; DestDir: {app}\Binarios
Source: ..\DLL\libcharset-1.dll; DestDir: {app}\Binarios
Source: ..\DLL\libeay32.dll; DestDir: {app}\Binarios
Source: ..\DLL\libexslt-0.dll; DestDir: {app}\Binarios
Source: ..\DLL\libgcc_s_dw2-1.dll; DestDir: {app}\Binarios
Source: ..\DLL\libiconv-2.dll; DestDir: {app}\Binarios
Source: ..\DLL\libintl-8.dll; DestDir: {app}\Binarios
Source: ..\DLL\libltdl-7.dll; DestDir: {app}\Binarios
Source: ..\DLL\libwinpthread-1.dll; DestDir: {app}\Binarios
Source: ..\DLL\libxml2.dll; DestDir: {app}\Binarios
Source: ..\DLL\libxml2-2.dll; DestDir: {app}\Binarios
Source: ..\DLL\libxmlsec.dll; DestDir: {app}\Binarios
Source: ..\DLL\libxmlsec1.dll; DestDir: {app}\Binarios
Source: ..\DLL\libxmlsec1-openssl.dll; DestDir: {app}\Binarios
Source: ..\DLL\libxmlsecopenssl.dll; DestDir: {app}\Binarios
Source: ..\DLL\libxmlsec-openssl.dll; DestDir: {app}\Binarios
Source: ..\DLL\libxslt.dll; DestDir: {app}\Binarios
Source: ..\DLL\libxslt-1.dll; DestDir: {app}\Binarios
Source: ..\DLL\msvcr120.dll; DestDir: {app}\Binarios
Source: ..\DLL\msxml5.dll; DestDir: {app}\Binarios
Source: ..\DLL\msxml5r.dll; DestDir: {app}\Binarios
Source: ..\DLL\openssl.exe; DestDir: {app}\Binarios
Source: ..\DLL\ssleay32.dll; DestDir: {app}\Binarios
Source: ..\DLL\zlib1.dll; DestDir: {app}\Binarios

;------------------------------------------------------------------
; OUTROS ARQUIVOS
;------------------------------------------------------------------
Source: E:\Aplicativos\Firebird\Firebird-2.5.8.27089_0_Win32.exe; DestDir: {app}\Firebird
Source: ..\Imagens\camisa01.jpg; DestDir: {app}\Imagens
Source: ..\Imagens\camisa02.jpg; DestDir: {app}\Imagens

Source: ..\..\..\Componentes\ACBr\Exemplos\ACBrBoleto\Delphi\Report\Boleto.fr3; DestDir: {app}\Boletos\Layout
Source: ..\..\..\Componentes\ACBr\Exemplos\ACBrDFe\ACBrNFe\Delphi\Report\DANFeRetrato_2019.fr3; DestDir: {app}\DANFE
Source: ..\..\..\Componentes\ACBr\Fontes\ACBrBoleto\Logos\Colorido\001.bmp; DestDir: {app}\Boletos\Logos\Colorido
Source: ..\..\..\Componentes\ACBr\Fontes\ACBrBoleto\Logos\Colorido\003.bmp; DestDir: {app}\Boletos\Logos\Colorido
Source: ..\..\..\Componentes\ACBr\Fontes\ACBrBoleto\Logos\Colorido\004.bmp; DestDir: {app}\Boletos\Logos\Colorido
Source: ..\..\..\Componentes\ACBr\Fontes\ACBrBoleto\Logos\Colorido\008.bmp; DestDir: {app}\Boletos\Logos\Colorido
Source: ..\..\..\Componentes\ACBr\Fontes\ACBrBoleto\Logos\Colorido\021.bmp; DestDir: {app}\Boletos\Logos\Colorido
Source: ..\..\..\Componentes\ACBr\Fontes\ACBrBoleto\Logos\Colorido\024.bmp; DestDir: {app}\Boletos\Logos\Colorido
Source: ..\..\..\Componentes\ACBr\Fontes\ACBrBoleto\Logos\Colorido\027.bmp; DestDir: {app}\Boletos\Logos\Colorido
Source: ..\..\..\Componentes\ACBr\Fontes\ACBrBoleto\Logos\Colorido\028.bmp; DestDir: {app}\Boletos\Logos\Colorido
Source: ..\..\..\Componentes\ACBr\Fontes\ACBrBoleto\Logos\Colorido\029.bmp; DestDir: {app}\Boletos\Logos\Colorido
Source: ..\..\..\Componentes\ACBr\Fontes\ACBrBoleto\Logos\Colorido\031.bmp; DestDir: {app}\Boletos\Logos\Colorido
Source: ..\..\..\Componentes\ACBr\Fontes\ACBrBoleto\Logos\Colorido\033.bmp; DestDir: {app}\Boletos\Logos\Colorido
Source: ..\..\..\Componentes\ACBr\Fontes\ACBrBoleto\Logos\Colorido\036.bmp; DestDir: {app}\Boletos\Logos\Colorido
Source: ..\..\..\Componentes\ACBr\Fontes\ACBrBoleto\Logos\Colorido\038.bmp; DestDir: {app}\Boletos\Logos\Colorido
Source: ..\..\..\Componentes\ACBr\Fontes\ACBrBoleto\Logos\Colorido\041.bmp; DestDir: {app}\Boletos\Logos\Colorido
Source: ..\..\..\Componentes\ACBr\Fontes\ACBrBoleto\Logos\Colorido\047.bmp; DestDir: {app}\Boletos\Logos\Colorido
Source: ..\..\..\Componentes\ACBr\Fontes\ACBrBoleto\Logos\Colorido\070.bmp; DestDir: {app}\Boletos\Logos\Colorido
Source: ..\..\..\Componentes\ACBr\Fontes\ACBrBoleto\Logos\Colorido\085.bmp; DestDir: {app}\Boletos\Logos\Colorido
Source: ..\..\..\Componentes\ACBr\Fontes\ACBrBoleto\Logos\Colorido\097.bmp; DestDir: {app}\Boletos\Logos\Colorido
Source: ..\..\..\Componentes\ACBr\Fontes\ACBrBoleto\Logos\Colorido\099.bmp; DestDir: {app}\Boletos\Logos\Colorido
Source: ..\..\..\Componentes\ACBr\Fontes\ACBrBoleto\Logos\Colorido\104.bmp; DestDir: {app}\Boletos\Logos\Colorido
Source: ..\..\..\Componentes\ACBr\Fontes\ACBrBoleto\Logos\Colorido\133.bmp; DestDir: {app}\Boletos\Logos\Colorido
Source: ..\..\..\Componentes\ACBr\Fontes\ACBrBoleto\Logos\Colorido\136.bmp; DestDir: {app}\Boletos\Logos\Colorido
Source: ..\..\..\Componentes\ACBr\Fontes\ACBrBoleto\Logos\Colorido\151.bmp; DestDir: {app}\Boletos\Logos\Colorido
Source: ..\..\..\Componentes\ACBr\Fontes\ACBrBoleto\Logos\Colorido\231.bmp; DestDir: {app}\Boletos\Logos\Colorido
Source: ..\..\..\Componentes\ACBr\Fontes\ACBrBoleto\Logos\Colorido\237.bmp; DestDir: {app}\Boletos\Logos\Colorido
Source: ..\..\..\Componentes\ACBr\Fontes\ACBrBoleto\Logos\Colorido\244.bmp; DestDir: {app}\Boletos\Logos\Colorido
Source: ..\..\..\Componentes\ACBr\Fontes\ACBrBoleto\Logos\Colorido\246.bmp; DestDir: {app}\Boletos\Logos\Colorido
Source: ..\..\..\Componentes\ACBr\Fontes\ACBrBoleto\Logos\Colorido\263.bmp; DestDir: {app}\Boletos\Logos\Colorido
Source: ..\..\..\Componentes\ACBr\Fontes\ACBrBoleto\Logos\Colorido\275.bmp; DestDir: {app}\Boletos\Logos\Colorido
Source: ..\..\..\Componentes\ACBr\Fontes\ACBrBoleto\Logos\Colorido\291.bmp; DestDir: {app}\Boletos\Logos\Colorido
Source: ..\..\..\Componentes\ACBr\Fontes\ACBrBoleto\Logos\Colorido\320.bmp; DestDir: {app}\Boletos\Logos\Colorido
Source: ..\..\..\Componentes\ACBr\Fontes\ACBrBoleto\Logos\Colorido\341.bmp; DestDir: {app}\Boletos\Logos\Colorido
Source: ..\..\..\Componentes\ACBr\Fontes\ACBrBoleto\Logos\Colorido\347.bmp; DestDir: {app}\Boletos\Logos\Colorido
Source: ..\..\..\Componentes\ACBr\Fontes\ACBrBoleto\Logos\Colorido\353.bmp; DestDir: {app}\Boletos\Logos\Colorido
Source: ..\..\..\Componentes\ACBr\Fontes\ACBrBoleto\Logos\Colorido\356.bmp; DestDir: {app}\Boletos\Logos\Colorido
Source: ..\..\..\Componentes\ACBr\Fontes\ACBrBoleto\Logos\Colorido\389.bmp; DestDir: {app}\Boletos\Logos\Colorido
Source: ..\..\..\Componentes\ACBr\Fontes\ACBrBoleto\Logos\Colorido\392.bmp; DestDir: {app}\Boletos\Logos\Colorido
Source: ..\..\..\Componentes\ACBr\Fontes\ACBrBoleto\Logos\Colorido\399.bmp; DestDir: {app}\Boletos\Logos\Colorido
Source: ..\..\..\Componentes\ACBr\Fontes\ACBrBoleto\Logos\Colorido\409.bmp; DestDir: {app}\Boletos\Logos\Colorido
Source: ..\..\..\Componentes\ACBr\Fontes\ACBrBoleto\Logos\Colorido\422.bmp; DestDir: {app}\Boletos\Logos\Colorido
Source: ..\..\..\Componentes\ACBr\Fontes\ACBrBoleto\Logos\Colorido\424.bmp; DestDir: {app}\Boletos\Logos\Colorido
Source: ..\..\..\Componentes\ACBr\Fontes\ACBrBoleto\Logos\Colorido\453.bmp; DestDir: {app}\Boletos\Logos\Colorido
Source: ..\..\..\Componentes\ACBr\Fontes\ACBrBoleto\Logos\Colorido\479.bmp; DestDir: {app}\Boletos\Logos\Colorido
Source: ..\..\..\Componentes\ACBr\Fontes\ACBrBoleto\Logos\Colorido\600.bmp; DestDir: {app}\Boletos\Logos\Colorido
Source: ..\..\..\Componentes\ACBr\Fontes\ACBrBoleto\Logos\Colorido\604.bmp; DestDir: {app}\Boletos\Logos\Colorido
Source: ..\..\..\Componentes\ACBr\Fontes\ACBrBoleto\Logos\Colorido\610.bmp; DestDir: {app}\Boletos\Logos\Colorido
Source: ..\..\..\Componentes\ACBr\Fontes\ACBrBoleto\Logos\Colorido\623.bmp; DestDir: {app}\Boletos\Logos\Colorido
Source: ..\..\..\Componentes\ACBr\Fontes\ACBrBoleto\Logos\Colorido\633.bmp; DestDir: {app}\Boletos\Logos\Colorido
Source: ..\..\..\Componentes\ACBr\Fontes\ACBrBoleto\Logos\Colorido\637.bmp; DestDir: {app}\Boletos\Logos\Colorido
Source: ..\..\..\Componentes\ACBr\Fontes\ACBrBoleto\Logos\Colorido\641.bmp; DestDir: {app}\Boletos\Logos\Colorido
Source: ..\..\..\Componentes\ACBr\Fontes\ACBrBoleto\Logos\Colorido\702.bmp; DestDir: {app}\Boletos\Logos\Colorido
Source: ..\..\..\Componentes\ACBr\Fontes\ACBrBoleto\Logos\Colorido\707.bmp; DestDir: {app}\Boletos\Logos\Colorido
Source: ..\..\..\Componentes\ACBr\Fontes\ACBrBoleto\Logos\Colorido\721.bmp; DestDir: {app}\Boletos\Logos\Colorido
Source: ..\..\..\Componentes\ACBr\Fontes\ACBrBoleto\Logos\Colorido\741.bmp; DestDir: {app}\Boletos\Logos\Colorido
Source: ..\..\..\Componentes\ACBr\Fontes\ACBrBoleto\Logos\Colorido\745.bmp; DestDir: {app}\Boletos\Logos\Colorido
Source: ..\..\..\Componentes\ACBr\Fontes\ACBrBoleto\Logos\Colorido\748.bmp; DestDir: {app}\Boletos\Logos\Colorido
Source: ..\..\..\Componentes\ACBr\Fontes\ACBrBoleto\Logos\Colorido\749.bmp; DestDir: {app}\Boletos\Logos\Colorido
Source: ..\..\..\Componentes\ACBr\Fontes\ACBrBoleto\Logos\Colorido\756.bmp; DestDir: {app}\Boletos\Logos\Colorido
Source: ..\..\..\Componentes\ACBr\Exemplos\ACBrDFe\Schemas\NFe\Averb_v1.00.xsd; DestDir: {app}\Schemas
Source: ..\..\..\Componentes\ACBr\Exemplos\ACBrDFe\Schemas\NFe\CCe_v1.00.xsd; DestDir: {app}\Schemas
Source: ..\..\..\Componentes\ACBr\Exemplos\ACBrDFe\Schemas\NFe\confRecebto_v1.00.xsd; DestDir: {app}\Schemas
Source: ..\..\..\Componentes\ACBr\Exemplos\ACBrDFe\Schemas\NFe\consCad_v2.00.xsd; DestDir: {app}\Schemas
Source: ..\..\..\Componentes\ACBr\Exemplos\ACBrDFe\Schemas\NFe\consNFeDest_v1.01.xsd; DestDir: {app}\Schemas
Source: ..\..\..\Componentes\ACBr\Exemplos\ACBrDFe\Schemas\NFe\consReciNFe_v3.10.xsd; DestDir: {app}\Schemas
Source: ..\..\..\Componentes\ACBr\Exemplos\ACBrDFe\Schemas\NFe\consReciNFe_v4.00.xsd; DestDir: {app}\Schemas
Source: ..\..\..\Componentes\ACBr\Exemplos\ACBrDFe\Schemas\NFe\consSitNFe_v3.10.xsd; DestDir: {app}\Schemas
Source: ..\..\..\Componentes\ACBr\Exemplos\ACBrDFe\Schemas\NFe\consSitNFe_v4.00.xsd; DestDir: {app}\Schemas
Source: ..\..\..\Componentes\ACBr\Exemplos\ACBrDFe\Schemas\NFe\consStatServ_v3.10.xsd; DestDir: {app}\Schemas
Source: ..\..\..\Componentes\ACBr\Exemplos\ACBrDFe\Schemas\NFe\consStatServ_v4.00.xsd; DestDir: {app}\Schemas
Source: ..\..\..\Componentes\ACBr\Exemplos\ACBrDFe\Schemas\NFe\distDFeInt_v1.00.xsd; DestDir: {app}\Schemas
Source: ..\..\..\Componentes\ACBr\Exemplos\ACBrDFe\Schemas\NFe\distDFeInt_v1.01.xsd; DestDir: {app}\Schemas
Source: ..\..\..\Componentes\ACBr\Exemplos\ACBrDFe\Schemas\NFe\downloadNFe_v1.00.xsd; DestDir: {app}\Schemas
Source: ..\..\..\Componentes\ACBr\Exemplos\ACBrDFe\Schemas\NFe\e110110_v1.00.xsd; DestDir: {app}\Schemas
Source: ..\..\..\Componentes\ACBr\Exemplos\ACBrDFe\Schemas\NFe\e110111_v1.00.xsd; DestDir: {app}\Schemas
Source: ..\..\..\Componentes\ACBr\Exemplos\ACBrDFe\Schemas\NFe\e110112_v1.00.xsd; DestDir: {app}\Schemas
Source: ..\..\..\Componentes\ACBr\Exemplos\ACBrDFe\Schemas\NFe\e110140_v1.00.xsd; DestDir: {app}\Schemas
Source: ..\..\..\Componentes\ACBr\Exemplos\ACBrDFe\Schemas\NFe\e111500_v1.00.xsd; DestDir: {app}\Schemas
Source: ..\..\..\Componentes\ACBr\Exemplos\ACBrDFe\Schemas\NFe\e111501_v1.00.xsd; DestDir: {app}\Schemas
Source: ..\..\..\Componentes\ACBr\Exemplos\ACBrDFe\Schemas\NFe\e111502_v1.00.xsd; DestDir: {app}\Schemas
Source: ..\..\..\Componentes\ACBr\Exemplos\ACBrDFe\Schemas\NFe\e111503_v1.00.xsd; DestDir: {app}\Schemas
Source: ..\..\..\Componentes\ACBr\Exemplos\ACBrDFe\Schemas\NFe\e210200_v1.00.xsd; DestDir: {app}\Schemas
Source: ..\..\..\Componentes\ACBr\Exemplos\ACBrDFe\Schemas\NFe\e210210_v1.00.xsd; DestDir: {app}\Schemas
Source: ..\..\..\Componentes\ACBr\Exemplos\ACBrDFe\Schemas\NFe\e210220_v1.00.xsd; DestDir: {app}\Schemas
Source: ..\..\..\Componentes\ACBr\Exemplos\ACBrDFe\Schemas\NFe\e210240_v1.00.xsd; DestDir: {app}\Schemas
Source: ..\..\..\Componentes\ACBr\Exemplos\ACBrDFe\Schemas\NFe\e411500_v1.00.xsd; DestDir: {app}\Schemas
Source: ..\..\..\Componentes\ACBr\Exemplos\ACBrDFe\Schemas\NFe\e411501_v1.00.xsd; DestDir: {app}\Schemas
Source: ..\..\..\Componentes\ACBr\Exemplos\ACBrDFe\Schemas\NFe\e411502_v1.00.xsd; DestDir: {app}\Schemas
Source: ..\..\..\Componentes\ACBr\Exemplos\ACBrDFe\Schemas\NFe\e411503_v1.00.xsd; DestDir: {app}\Schemas
Source: ..\..\..\Componentes\ACBr\Exemplos\ACBrDFe\Schemas\NFe\e790700_v1.00.xsd; DestDir: {app}\Schemas
Source: ..\..\..\Componentes\ACBr\Exemplos\ACBrDFe\Schemas\NFe\e990900_v1.00.xsd; DestDir: {app}\Schemas
Source: ..\..\..\Componentes\ACBr\Exemplos\ACBrDFe\Schemas\NFe\e990910_v1.00.xsd; DestDir: {app}\Schemas
Source: ..\..\..\Componentes\ACBr\Exemplos\ACBrDFe\Schemas\NFe\envAverb_v1.00.xsd; DestDir: {app}\Schemas
Source: ..\..\..\Componentes\ACBr\Exemplos\ACBrDFe\Schemas\NFe\envCancelPProrrogNFe_v1.0.xsd; DestDir: {app}\Schemas
Source: ..\..\..\Componentes\ACBr\Exemplos\ACBrDFe\Schemas\NFe\envCCe_v1.00.xsd; DestDir: {app}\Schemas
Source: ..\..\..\Componentes\ACBr\Exemplos\ACBrDFe\Schemas\NFe\envConfRecebto_v1.00.xsd; DestDir: {app}\Schemas
Source: ..\..\..\Componentes\ACBr\Exemplos\ACBrDFe\Schemas\NFe\envEPEC_v1.00.xsd; DestDir: {app}\Schemas
Source: ..\..\..\Componentes\ACBr\Exemplos\ACBrDFe\Schemas\NFe\envEvento_v1.00.xsd; DestDir: {app}\Schemas
Source: ..\..\..\Componentes\ACBr\Exemplos\ACBrDFe\Schemas\NFe\envEventoCancNFe_v1.00.xsd; DestDir: {app}\Schemas
Source: ..\..\..\Componentes\ACBr\Exemplos\ACBrDFe\Schemas\NFe\envEventoCancSubst_v1.00.xsd; DestDir: {app}\Schemas
Source: ..\..\..\Componentes\ACBr\Exemplos\ACBrDFe\Schemas\NFe\envFiscoNfe_v1.0.xsd; DestDir: {app}\Schemas
Source: ..\..\..\Componentes\ACBr\Exemplos\ACBrDFe\Schemas\NFe\enviNFe_v3.10.xsd; DestDir: {app}\Schemas
Source: ..\..\..\Componentes\ACBr\Exemplos\ACBrDFe\Schemas\NFe\enviNFe_v4.00.xsd; DestDir: {app}\Schemas
Source: ..\..\..\Componentes\ACBr\Exemplos\ACBrDFe\Schemas\NFe\envPProrrogNFe_v1.0.xsd; DestDir: {app}\Schemas
Source: ..\..\..\Componentes\ACBr\Exemplos\ACBrDFe\Schemas\NFe\envRemIndus_v1.00.xsd; DestDir: {app}\Schemas
Source: ..\..\..\Componentes\ACBr\Exemplos\ACBrDFe\Schemas\NFe\envSuframaInternaliza_v1.00.xsd; DestDir: {app}\Schemas
Source: ..\..\..\Componentes\ACBr\Exemplos\ACBrDFe\Schemas\NFe\envSuframaVistoria_v1.00.xsd; DestDir: {app}\Schemas
Source: ..\..\..\Componentes\ACBr\Exemplos\ACBrDFe\Schemas\NFe\EPEC_v1.00.xsd; DestDir: {app}\Schemas
Source: ..\..\..\Componentes\ACBr\Exemplos\ACBrDFe\Schemas\NFe\eventoCancNFe_v1.00.xsd; DestDir: {app}\Schemas
Source: ..\..\..\Componentes\ACBr\Exemplos\ACBrDFe\Schemas\NFe\eventoCancSubst_v1.00.xsd; DestDir: {app}\Schemas
Source: ..\..\..\Componentes\ACBr\Exemplos\ACBrDFe\Schemas\NFe\eventoEPEC_v0.01.xsd; DestDir: {app}\Schemas
Source: ..\..\..\Componentes\ACBr\Exemplos\ACBrDFe\Schemas\NFe\eventoEPEC_v1.00.xsd; DestDir: {app}\Schemas
Source: ..\..\..\Componentes\ACBr\Exemplos\ACBrDFe\Schemas\NFe\eventoRemIndus_v1.00.xsd; DestDir: {app}\Schemas
Source: ..\..\..\Componentes\ACBr\Exemplos\ACBrDFe\Schemas\NFe\inutNFe_v3.10.xsd; DestDir: {app}\Schemas
Source: ..\..\..\Componentes\ACBr\Exemplos\ACBrDFe\Schemas\NFe\inutNFe_v4.00.xsd; DestDir: {app}\Schemas
Source: ..\..\..\Componentes\ACBr\Exemplos\ACBrDFe\Schemas\NFe\leiauteAverb_v1.00.xsd; DestDir: {app}\Schemas
Source: ..\..\..\Componentes\ACBr\Exemplos\ACBrDFe\Schemas\NFe\leiauteCCe_v1.00.xsd; DestDir: {app}\Schemas
Source: ..\..\..\Componentes\ACBr\Exemplos\ACBrDFe\Schemas\NFe\leiauteConfRecebto_v1.00.xsd; DestDir: {app}\Schemas
Source: ..\..\..\Componentes\ACBr\Exemplos\ACBrDFe\Schemas\NFe\leiauteConsNFeDest_v1.01.xsd; DestDir: {app}\Schemas
Source: ..\..\..\Componentes\ACBr\Exemplos\ACBrDFe\Schemas\NFe\leiauteConsSitNFe_v3.10.xsd; DestDir: {app}\Schemas
Source: ..\..\..\Componentes\ACBr\Exemplos\ACBrDFe\Schemas\NFe\leiauteConsSitNFe_v4.00.xsd; DestDir: {app}\Schemas
Source: ..\..\..\Componentes\ACBr\Exemplos\ACBrDFe\Schemas\NFe\leiauteConsStatServ_v3.10.xsd; DestDir: {app}\Schemas
Source: ..\..\..\Componentes\ACBr\Exemplos\ACBrDFe\Schemas\NFe\leiauteConsStatServ_v4.00.xsd; DestDir: {app}\Schemas
Source: ..\..\..\Componentes\ACBr\Exemplos\ACBrDFe\Schemas\NFe\leiauteConsultaCadastro_v2.00.xsd; DestDir: {app}\Schemas
Source: ..\..\..\Componentes\ACBr\Exemplos\ACBrDFe\Schemas\NFe\leiauteDownloadNFe_v1.00.xsd; DestDir: {app}\Schemas
Source: ..\..\..\Componentes\ACBr\Exemplos\ACBrDFe\Schemas\NFe\leiauteEPEC_v1.00.xsd; DestDir: {app}\Schemas
Source: ..\..\..\Componentes\ACBr\Exemplos\ACBrDFe\Schemas\NFe\leiauteEvento_v1.00.xsd; DestDir: {app}\Schemas
Source: ..\..\..\Componentes\ACBr\Exemplos\ACBrDFe\Schemas\NFe\leiauteEventoCancNFe_v1.00.xsd; DestDir: {app}\Schemas
Source: ..\..\..\Componentes\ACBr\Exemplos\ACBrDFe\Schemas\NFe\leiauteEventoCancSubst_v1.00.xsd; DestDir: {app}\Schemas
Source: ..\..\..\Componentes\ACBr\Exemplos\ACBrDFe\Schemas\NFe\leiauteInutNFe_v3.10.xsd; DestDir: {app}\Schemas
Source: ..\..\..\Componentes\ACBr\Exemplos\ACBrDFe\Schemas\NFe\leiauteInutNFe_v4.00.xsd; DestDir: {app}\Schemas
Source: ..\..\..\Componentes\ACBr\Exemplos\ACBrDFe\Schemas\NFe\leiauteNFe_v3.10.xsd; DestDir: {app}\Schemas
Source: ..\..\..\Componentes\ACBr\Exemplos\ACBrDFe\Schemas\NFe\leiauteNFe_v4.00.xsd; DestDir: {app}\Schemas
Source: ..\..\..\Componentes\ACBr\Exemplos\ACBrDFe\Schemas\NFe\leiauteRemIndus_v1.00.xsd; DestDir: {app}\Schemas
Source: ..\..\..\Componentes\ACBr\Exemplos\ACBrDFe\Schemas\NFe\leiauteSuframaInternaliza_v1.00.xsd; DestDir: {app}\Schemas
Source: ..\..\..\Componentes\ACBr\Exemplos\ACBrDFe\Schemas\NFe\leiauteSuframaVistoria_v1.00.xsd; DestDir: {app}\Schemas
Source: ..\..\..\Componentes\ACBr\Exemplos\ACBrDFe\Schemas\NFe\nfe_v3.10.xsd; DestDir: {app}\Schemas
Source: ..\..\..\Componentes\ACBr\Exemplos\ACBrDFe\Schemas\NFe\nfe_v4.00.xsd; DestDir: {app}\Schemas
Source: ..\..\..\Componentes\ACBr\Exemplos\ACBrDFe\Schemas\NFe\procAverbNFe_v1.00.xsd; DestDir: {app}\Schemas
Source: ..\..\..\Componentes\ACBr\Exemplos\ACBrDFe\Schemas\NFe\procCCeNFe_v1.00.xsd; DestDir: {app}\Schemas
Source: ..\..\..\Componentes\ACBr\Exemplos\ACBrDFe\Schemas\NFe\procConfRecebtoNFe_v1.00.xsd; DestDir: {app}\Schemas
Source: ..\..\..\Componentes\ACBr\Exemplos\ACBrDFe\Schemas\NFe\procEPEC_v1.00.xsd; DestDir: {app}\Schemas
Source: ..\..\..\Componentes\ACBr\Exemplos\ACBrDFe\Schemas\NFe\procEventoCancNFe_v1.00.xsd; DestDir: {app}\Schemas
Source: ..\..\..\Componentes\ACBr\Exemplos\ACBrDFe\Schemas\NFe\procEventoCancSubst_v1.00.xsd; DestDir: {app}\Schemas
Source: ..\..\..\Componentes\ACBr\Exemplos\ACBrDFe\Schemas\NFe\procEventoNFe_v1.00.xsd; DestDir: {app}\Schemas
Source: ..\..\..\Componentes\ACBr\Exemplos\ACBrDFe\Schemas\NFe\procEventoNFe_v99.99.xsd; DestDir: {app}\Schemas
Source: ..\..\..\Componentes\ACBr\Exemplos\ACBrDFe\Schemas\NFe\procInutNFe_v3.10.xsd; DestDir: {app}\Schemas
Source: ..\..\..\Componentes\ACBr\Exemplos\ACBrDFe\Schemas\NFe\procInutNFe_v4.00.xsd; DestDir: {app}\Schemas
Source: ..\..\..\Componentes\ACBr\Exemplos\ACBrDFe\Schemas\NFe\procNFe_v3.10.xsd; DestDir: {app}\Schemas
Source: ..\..\..\Componentes\ACBr\Exemplos\ACBrDFe\Schemas\NFe\procNFe_v4.00.xsd; DestDir: {app}\Schemas
Source: ..\..\..\Componentes\ACBr\Exemplos\ACBrDFe\Schemas\NFe\procRemIndus_v1.00.xsd; DestDir: {app}\Schemas
Source: ..\..\..\Componentes\ACBr\Exemplos\ACBrDFe\Schemas\NFe\resEvento_v1.00.xsd; DestDir: {app}\Schemas
Source: ..\..\..\Componentes\ACBr\Exemplos\ACBrDFe\Schemas\NFe\resEvento_v1.01.xsd; DestDir: {app}\Schemas
Source: ..\..\..\Componentes\ACBr\Exemplos\ACBrDFe\Schemas\NFe\resNFe_v1.00.xsd; DestDir: {app}\Schemas
Source: ..\..\..\Componentes\ACBr\Exemplos\ACBrDFe\Schemas\NFe\resNFe_v1.01.xsd; DestDir: {app}\Schemas
Source: ..\..\..\Componentes\ACBr\Exemplos\ACBrDFe\Schemas\NFe\retconsNFeDest_v1.01.xsd; DestDir: {app}\Schemas
Source: ..\..\..\Componentes\ACBr\Exemplos\ACBrDFe\Schemas\NFe\retConsReciNFe_v3.10.xsd; DestDir: {app}\Schemas
Source: ..\..\..\Componentes\ACBr\Exemplos\ACBrDFe\Schemas\NFe\retConsReciNFe_v4.00.xsd; DestDir: {app}\Schemas
Source: ..\..\..\Componentes\ACBr\Exemplos\ACBrDFe\Schemas\NFe\retConsSitNFe_v3.10.xsd; DestDir: {app}\Schemas
Source: ..\..\..\Componentes\ACBr\Exemplos\ACBrDFe\Schemas\NFe\retConsSitNFe_v4.00.xsd; DestDir: {app}\Schemas
Source: ..\..\..\Componentes\ACBr\Exemplos\ACBrDFe\Schemas\NFe\retConsStatServ_v3.10.xsd; DestDir: {app}\Schemas
Source: ..\..\..\Componentes\ACBr\Exemplos\ACBrDFe\Schemas\NFe\retConsStatServ_v4.00.xsd; DestDir: {app}\Schemas
Source: ..\..\..\Componentes\ACBr\Exemplos\ACBrDFe\Schemas\NFe\retDistDFeInt_v1.00.xsd; DestDir: {app}\Schemas
Source: ..\..\..\Componentes\ACBr\Exemplos\ACBrDFe\Schemas\NFe\retDistDFeInt_v1.01.xsd; DestDir: {app}\Schemas
Source: ..\..\..\Componentes\ACBr\Exemplos\ACBrDFe\Schemas\NFe\retDownloadNFe_v1.00.xsd; DestDir: {app}\Schemas
Source: ..\..\..\Componentes\ACBr\Exemplos\ACBrDFe\Schemas\NFe\retEnvAverb_v1.00.xsd; DestDir: {app}\Schemas
Source: ..\..\..\Componentes\ACBr\Exemplos\ACBrDFe\Schemas\NFe\retEnvCancelPProrrogNFe_v1.0.xsd; DestDir: {app}\Schemas
Source: ..\..\..\Componentes\ACBr\Exemplos\ACBrDFe\Schemas\NFe\retEnvCCe_v1.00.xsd; DestDir: {app}\Schemas
Source: ..\..\..\Componentes\ACBr\Exemplos\ACBrDFe\Schemas\NFe\retEnvConfRecebto_v1.00.xsd; DestDir: {app}\Schemas
Source: ..\..\..\Componentes\ACBr\Exemplos\ACBrDFe\Schemas\NFe\retEnvEPEC_v1.00.xsd; DestDir: {app}\Schemas
Source: ..\..\..\Componentes\ACBr\Exemplos\ACBrDFe\Schemas\NFe\retEnvEvento_v1.00.xsd; DestDir: {app}\Schemas
Source: ..\..\..\Componentes\ACBr\Exemplos\ACBrDFe\Schemas\NFe\retEnvEventoCancNFe_v1.00.xsd; DestDir: {app}\Schemas
Source: ..\..\..\Componentes\ACBr\Exemplos\ACBrDFe\Schemas\NFe\retEnvEventoCancSubst_v1.00.xsd; DestDir: {app}\Schemas
Source: ..\..\..\Componentes\ACBr\Exemplos\ACBrDFe\Schemas\NFe\retEnvFiscoNFe_v1.0.xsd; DestDir: {app}\Schemas
Source: ..\..\..\Componentes\ACBr\Exemplos\ACBrDFe\Schemas\NFe\retEnviNFe_v3.10.xsd; DestDir: {app}\Schemas
Source: ..\..\..\Componentes\ACBr\Exemplos\ACBrDFe\Schemas\NFe\retEnviNFe_v4.00.xsd; DestDir: {app}\Schemas
Source: ..\..\..\Componentes\ACBr\Exemplos\ACBrDFe\Schemas\NFe\retEnvRemIndus_v1.00.xsd; DestDir: {app}\Schemas
Source: ..\..\..\Componentes\ACBr\Exemplos\ACBrDFe\Schemas\NFe\retEnvSuframaInternaliza_v1.00.xsd; DestDir: {app}\Schemas
Source: ..\..\..\Componentes\ACBr\Exemplos\ACBrDFe\Schemas\NFe\retEnvSuframaVistoria_v1.00.xsd; DestDir: {app}\Schemas
Source: ..\..\..\Componentes\ACBr\Exemplos\ACBrDFe\Schemas\NFe\retEventoEPEC_v0.01.xsd; DestDir: {app}\Schemas
Source: ..\..\..\Componentes\ACBr\Exemplos\ACBrDFe\Schemas\NFe\retInutNFe_v3.10.xsd; DestDir: {app}\Schemas
Source: ..\..\..\Componentes\ACBr\Exemplos\ACBrDFe\Schemas\NFe\retInutNFe_v4.00.xsd; DestDir: {app}\Schemas
Source: ..\..\..\Componentes\ACBr\Exemplos\ACBrDFe\Schemas\NFe\retPProrrogNFe_v1.0.xsd; DestDir: {app}\Schemas
Source: ..\..\..\Componentes\ACBr\Exemplos\ACBrDFe\Schemas\NFe\SuframaInternaliza_v1.00.xsd; DestDir: {app}\Schemas
Source: ..\..\..\Componentes\ACBr\Exemplos\ACBrDFe\Schemas\NFe\SuframaVistoria_v1.00.xsd; DestDir: {app}\Schemas
Source: ..\..\..\Componentes\ACBr\Exemplos\ACBrDFe\Schemas\NFe\tiposBasico_v1.03.xsd; DestDir: {app}\Schemas
Source: ..\..\..\Componentes\ACBr\Exemplos\ACBrDFe\Schemas\NFe\tiposBasico_v3.10.xsd; DestDir: {app}\Schemas
Source: ..\..\..\Componentes\ACBr\Exemplos\ACBrDFe\Schemas\NFe\tiposBasico_v4.00.xsd; DestDir: {app}\Schemas
Source: ..\..\..\Componentes\ACBr\Exemplos\ACBrDFe\Schemas\NFe\tiposDistDFe_v1.00.xsd; DestDir: {app}\Schemas
Source: ..\..\..\Componentes\ACBr\Exemplos\ACBrDFe\Schemas\NFe\tiposDistDFe_v1.01.xsd; DestDir: {app}\Schemas
Source: ..\..\..\Componentes\ACBr\Exemplos\ACBrDFe\Schemas\NFe\xmldsig-core-schema_v1.01.xsd; DestDir: {app}\Schemas

[Languages]
Name: brazilianportuguese; MessagesFile: compiler:Languages\BrazilianPortuguese.isl

[Tasks]
Name: desktopicon; Description: {cm:CreateDesktopIcon}; GroupDescription: {cm:AdditionalIcons}
Name: quicklaunchicon; Description: {cm:CreateQuickLaunchIcon}; GroupDescription: {cm:AdditionalIcons}; OnlyBelowVersion: 0,6.1




[INI]
Filename: C:\VidaNovaSGN\Binarios\VidaNovaSGN.ini; Section: PARAMETROS; Key: Database; String: c:\vidanovasgn\db\vidanovasgn.fdb
Filename: C:\VidaNovaSGN\Binarios\VidaNovaSGN.ini; Section: PARAMETROS; Key: Server; String: 
Filename: C:\VidaNovaSGN\Binarios\VidaNovaSGN.ini; Section: PARAMETROS; Key: Empresa; String: 1
[Run]
Filename: {app}\Firebird\Firebird-2.5.8.27089_0_Win32.exe; Flags: postinstall waituntilidle; Description: Firebird 2.5 (instalar); StatusMsg: Banco de Dados Firebird 2.5
[UninstallDelete]
Name: C:\VidaNovaSGN; Type: filesandordirs; Tasks: ; Languages: 
