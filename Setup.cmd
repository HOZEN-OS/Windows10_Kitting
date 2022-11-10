@echo off
setlocal

set cpath=%~dp0
set maxsize=4294

md %cpath%\Mount

Del /Q %cpath%\install.wim

REM SourceIndex���ȉ��̃R�}���h�Ŋm�F
REM Dism /Get-ImageInfo /ImageFile:%cpath%\install.esd
Dism /Export-Image /SourceImageFile:%cpath%\install.esd /SourceIndex:3 /DestinationImageFile:%cpath%\install.wim /Compress:max /Checkintegrity

REM Index��1�ő��v�����ȉ��̃R�}���h�Ŋm�F
REM Dism /Get-ImageInfo /ImageFile:%cpath%\install.wim
Dism /Mount-Image /ImageFile:%cpath%\install.wim /Index:1 /MountDir:%cpath%\Mount

REM �C���X�g�[������Ă���v���r�W���j���O�p�b�P�[�W���ȉ��Ŋm�F
REM Dism /Image:%cpath%\Mount /Get-ProvisionedAppxPackages > %cpath%\ProvisionedAppxPackages.txt
REM �v���r�W���j���O�p�b�P�[�W�폜
Dism /Image:%cpath%\Mount /Remove-ProvisionedAppxPackage /PackageName:Microsoft.MicrosoftSolitaireCollection_4.4.8204.0_neutral_~_8wekyb3d8bbwe
Dism /Image:%cpath%\Mount /Remove-ProvisionedAppxPackage /PackageName:Microsoft.BingWeather_4.25.20211.0_neutral_~_8wekyb3d8bbwe
Dism /Image:%cpath%\Mount /Remove-ProvisionedAppxPackage /PackageName:Microsoft.DesktopAppInstaller_2019.125.2243.0_neutral_~_8wekyb3d8bbwe
Dism /Image:%cpath%\Mount /Remove-ProvisionedAppxPackage /PackageName:Microsoft.GetHelp_10.1706.13331.0_neutral_~_8wekyb3d8bbwe
Dism /Image:%cpath%\Mount /Remove-ProvisionedAppxPackage /PackageName:Microsoft.Getstarted_8.2.22942.0_neutral_~_8wekyb3d8bbwe
Dism /Image:%cpath%\Mount /Remove-ProvisionedAppxPackage /PackageName:Microsoft.HEIFImageExtension_1.0.22742.0_x64__8wekyb3d8bbwe
Dism /Image:%cpath%\Mount /Remove-ProvisionedAppxPackage /PackageName:Microsoft.Microsoft3DViewer_6.1908.2042.0_neutral_~_8wekyb3d8bbwe
Dism /Image:%cpath%\Mount /Remove-ProvisionedAppxPackage /PackageName:Microsoft.MicrosoftOfficeHub_18.1903.1152.0_neutral_~_8wekyb3d8bbwe
Dism /Image:%cpath%\Mount /Remove-ProvisionedAppxPackage /PackageName:Microsoft.MicrosoftStickyNotes_3.6.73.0_neutral_~_8wekyb3d8bbwe
Dism /Image:%cpath%\Mount /Remove-ProvisionedAppxPackage /PackageName:Microsoft.MixedReality.Portal_2000.19081.1301.0_neutral_~_8wekyb3d8bbwe
Dism /Image:%cpath%\Mount /Remove-ProvisionedAppxPackage /PackageName:Microsoft.MSPaint_2019.729.2301.0_neutral_~_8wekyb3d8bbwe
Dism /Image:%cpath%\Mount /Remove-ProvisionedAppxPackage /PackageName:Microsoft.Office.OneNote_16001.12026.20112.0_neutral_~_8wekyb3d8bbwe
Dism /Image:%cpath%\Mount /Remove-ProvisionedAppxPackage /PackageName:Microsoft.People_2019.305.632.0_neutral_~_8wekyb3d8bbwe
Dism /Image:%cpath%\Mount /Remove-ProvisionedAppxPackage /PackageName:Microsoft.ScreenSketch_2019.904.1644.0_neutral_~_8wekyb3d8bbwe
Dism /Image:%cpath%\Mount /Remove-ProvisionedAppxPackage /PackageName:Microsoft.SkypeApp_14.53.77.0_neutral_~_kzf8qxf38zg5c
Dism /Image:%cpath%\Mount /Remove-ProvisionedAppxPackage /PackageName:Microsoft.StorePurchaseApp_11811.1001.1813.0_neutral_~_8wekyb3d8bbwe
Dism /Image:%cpath%\Mount /Remove-ProvisionedAppxPackage /PackageName:Microsoft.VP9VideoExtensions_1.0.22681.0_x64__8wekyb3d8bbwe
Dism /Image:%cpath%\Mount /Remove-ProvisionedAppxPackage /PackageName:Microsoft.Wallet_2.4.18324.0_neutral_~_8wekyb3d8bbwe
Dism /Image:%cpath%\Mount /Remove-ProvisionedAppxPackage /PackageName:Microsoft.WebMediaExtensions_1.0.20875.0_neutral_~_8wekyb3d8bbwe
Dism /Image:%cpath%\Mount /Remove-ProvisionedAppxPackage /PackageName:Microsoft.WebpImageExtension_1.0.22753.0_x64__8wekyb3d8bbwe
Dism /Image:%cpath%\Mount /Remove-ProvisionedAppxPackage /PackageName:Microsoft.Windows.Photos_2019.19071.12548.0_neutral_~_8wekyb3d8bbwe
Dism /Image:%cpath%\Mount /Remove-ProvisionedAppxPackage /PackageName:Microsoft.WindowsAlarms_2019.807.41.0_neutral_~_8wekyb3d8bbwe
Dism /Image:%cpath%\Mount /Remove-ProvisionedAppxPackage /PackageName:Microsoft.WindowsCalculator_2020.1906.55.0_neutral_~_8wekyb3d8bbwe
Dism /Image:%cpath%\Mount /Remove-ProvisionedAppxPackage /PackageName:Microsoft.WindowsCamera_2018.826.98.0_neutral_~_8wekyb3d8bbwe
Dism /Image:%cpath%\Mount /Remove-ProvisionedAppxPackage /PackageName:microsoft.windowscommunicationsapps_16005.11629.20316.0_neutral_~_8wekyb3d8bbwe
Dism /Image:%cpath%\Mount /Remove-ProvisionedAppxPackage /PackageName:Microsoft.WindowsFeedbackHub_2019.1111.2029.0_neutral_~_8wekyb3d8bbwe
Dism /Image:%cpath%\Mount /Remove-ProvisionedAppxPackage /PackageName:Microsoft.WindowsMaps_2019.716.2316.0_neutral_~_8wekyb3d8bbwe
Dism /Image:%cpath%\Mount /Remove-ProvisionedAppxPackage /PackageName:Microsoft.WindowsSoundRecorder_2019.716.2313.0_neutral_~_8wekyb3d8bbwe
Dism /Image:%cpath%\Mount /Remove-ProvisionedAppxPackage /PackageName:Microsoft.Xbox.TCUI_1.23.28002.0_neutral_~_8wekyb3d8bbwe
Dism /Image:%cpath%\Mount /Remove-ProvisionedAppxPackage /PackageName:Microsoft.XboxApp_48.49.31001.0_neutral_~_8wekyb3d8bbwe
Dism /Image:%cpath%\Mount /Remove-ProvisionedAppxPackage /PackageName:Microsoft.XboxGameOverlay_1.46.11001.0_neutral_~_8wekyb3d8bbwe
Dism /Image:%cpath%\Mount /Remove-ProvisionedAppxPackage /PackageName:Microsoft.XboxGamingOverlay_2.34.28001.0_neutral_~_8wekyb3d8bbwe
Dism /Image:%cpath%\Mount /Remove-ProvisionedAppxPackage /PackageName:Microsoft.XboxIdentityProvider_12.50.6001.0_neutral_~_8wekyb3d8bbwe
Dism /Image:%cpath%\Mount /Remove-ProvisionedAppxPackage /PackageName:Microsoft.XboxSpeechToTextOverlay_1.17.29001.0_neutral_~_8wekyb3d8bbwe
Dism /Image:%cpath%\Mount /Remove-ProvisionedAppxPackage /PackageName:Microsoft.YourPhone_2019.430.2026.0_neutral_~_8wekyb3d8bbwe
Dism /Image:%cpath%\Mount /Remove-ProvisionedAppxPackage /PackageName:Microsoft.ZuneMusic_2019.19071.19011.0_neutral_~_8wekyb3d8bbwe
Dism /Image:%cpath%\Mount /Remove-ProvisionedAppxPackage /PackageName:Microsoft.ZuneVideo_2019.19071.19011.0_neutral_~_8wekyb3d8bbwe
Dism /Image:%cpath%\Mount /Remove-ProvisionedAppxPackage /PackageName:Microsoft.549981C3F5F10_1.1911.21713.0_neutral_~_8wekyb3d8bbwe
Dism /Image:%cpath%\Mount /Remove-ProvisionedAppxPackage /PackageName:Microsoft.WindowsStore_11910.1002.513.0_neutral_~_8wekyb3d8bbwe

REM Dism /Image:%cpath%\Mount /Get-Capabilities > %cpath%\Capabilities.txt
REM InternetExplorer�A�t�@�b�N�X�ȂǍ폜
Dism /Image:%cpath%\Mount /Remove-Capability /CapabilityName:App.StepsRecorder~~~~0.0.1.0
Dism /Image:%cpath%\Mount /Remove-Capability /CapabilityName:Hello.Face.18967~~~~0.0.1.0
Dism /Image:%cpath%\Mount /Remove-Capability /CapabilityName:Hello.Face.Migration.18967~~~~0.0.1.0
Dism /Image:%cpath%\Mount /Remove-Capability /CapabilityName:Microsoft.Windows.WordPad~~~~0.0.1.0
Dism /Image:%cpath%\Mount /Remove-Capability /CapabilityName:OneCoreUAP.OneSync~~~~0.0.1.0
Dism /Image:%cpath%\Mount /Remove-Capability /CapabilityName:Print.Fax.Scan~~~~0.0.1.0
Dism /Image:%cpath%\Mount /Remove-Capability /CapabilityName:App.Support.QuickAssist~~~~0.0.1.0
Dism /Image:%cpath%\Mount /Remove-Capability /CapabilityName:Language.Speech~~~ja-JP~0.0.1.0
Dism /Image:%cpath%\Mount /Remove-Capability /CapabilityName:Language.TextToSpeech~~~ja-JP~0.0.1.0
Dism /Image:%cpath%\Mount /Remove-Capability /CapabilityName:Language.Handwriting~~~ja-JP~0.0.1.0
Dism /Image:%cpath%\Mount /Remove-Capability /CapabilityName:Browser.InternetExplorer~~~~0.0.11.0

REM Dism /Image:%cpath%\Mount /Get-Packages > %cpath%\Packages.txt
Dism /Image:%cpath%\Mount /Remove-Package /PackageName:Microsoft-Windows-LanguageFeatures-OCR-ja-jp-Package~31bf3856ad364e35~amd64~~10.0.19041.1
Dism /Image:%cpath%\Mount /Remove-Package /PackageName:Microsoft-Windows-TabletPCMath-Package~31bf3856ad364e35~amd64~~10.0.19041.1865

if exist %cpath%\StoreApp\ (
	REM �K�{�p�b�P�[�W�̒ǉ�
	for %%f in (%cpath%\StoreApp\*.Appx) do (
		Dism /Image:%cpath%\Mount /Add-ProvisionedAppxPackage /PackagePath:"%%f" /SkipLicense
	)

	REM �K�v�ȃX�g�A�A�v���ǉ�
	for %%f in (%cpath%\StoreApp\*.Msixbundle) do (
		Dism /Image:%cpath%\Mount /Add-ProvisionedAppxPackage /PackagePath:"%%f" /SkipLicense
	)
	for %%f in (%cpath%\StoreApp\*.AppxBundle) do (
		Dism /Image:%cpath%\Mount /Add-ProvisionedAppxPackage /PackagePath:"%%f" /SkipLicense
	)
)

if exist %cpath%\Patch\ (
	REM �p�b�`����
	for %%f in (%cpath%\Patch\*.msu) do (
		Dism /Image:%cpath%\Mount /Add-Package /PackagePath="%%f"
	)
)

REM ���W�X�g���̕ύX�iHKEY_LOCAL_MACHINE�j
reg load HKLM\MOUNT %cpath%\Mount\Windows\System32\Config\SOFTWARE
REM Windows11�ւ̍X�V�֎~
reg add "HKEY_LOCAL_MACHINE\MOUNT\Policies\Microsoft\Windows\WindowsUpdate" /v "TargetReleaseVersion" /t REG_DWORD /d "1" /f
reg add "HKEY_LOCAL_MACHINE\MOUNT\Policies\Microsoft\Windows\WindowsUpdate" /v "TargetReleaseVersionInfo" /t REG_SZ /d "22H2" /f
reg add "HKEY_LOCAL_MACHINE\MOUNT\Policies\Microsoft\Windows\WindowsUpdate" /v "ProductVersion" /t REG_SZ /d "Windows 10" /f
REM �ŋߒǉ������A�v����\������
reg add "HKEY_LOCAL_MACHINE\MOUNT\Policies\Microsoft\Windows\Explorer" /v "HideRecentlyAddedApps" /t REG_DWORD /d "1" /f
REM �悭�g���A�v����\������
reg add "HKEY_LOCAL_MACHINE\MOUNT\SOFTWARE\Microsoft\Windows\CurrentVersion\Policie\Explorer"  /v "NoInstrumentation" /t REG_DWORD /d "1" /f
REM ���̃f�o�C�X�̈ʒu���
reg add "HKEY_LOCAL_MACHINE\MOUNT\Policies\Microsoft\Windows\LocationAndSensors" /v "DisableLocation" /t REG_DWORD /d "1" /f
REM Windows �ʒu���擾�@�\
reg add "HKEY_LOCAL_MACHINE\MOUNT\Policies\Microsoft\Windows\LocationAndSensors" /v "DisableWindowsLocationProvider" /t REG_DWORD /d "1" /f
REM Microsoft �R���V���[�}�[ �G�N�X�y���G���X�𖳌��ɂ���
reg add "HKEY_LOCAL_MACHINE\MOUNT\Policies\Microsoft\Windows\CloudContent" /v "DisableWindowsConsumerFeatures" /t REG_DWORD /d "1" /f
REM ���[�U�[�̍s�����L�^����u�^�C�����C���v�𖳌���
reg add "HKEY_LOCAL_MACHINE\MOUNT\Policies\Microsoft\Windows\System" /v "EnableActivityFeed" /t REG_DWORD /d "0" /f
REM �A�N�e�B�r�e�B�������I�t
reg add "HKEY_LOCAL_MACHINE\MOUNT\Policies\Microsoft\Windows\System" /v "PublishUserActivities" /t REG_DWORD /d "0" /f
REM �A�N�e�B�r�e�B�̃A�b�v���[�h�������Ȃ�
reg add "HKEY_LOCAL_MACHINE\MOUNT\Policies\Microsoft\Windows\System" /v "UploadUserActivities" /t REG_DWORD /d "0" /f
REM ���̃f�o�C�X�ł̃G�N�X�y���G���X�𑱍s���Ȃ�
reg add "HKEY_LOCAL_MACHINE\MOUNT\Policies\Microsoft\Windows\System" /v "EnableCdp" /t REG_DWORD /d "0" /f
REM �菑���F���̃G���[�񍐂��I�t�ɂ���
reg add "HKEY_LOCAL_MACHINE\MOUNT\Policies\Microsoft\Windows\HandwritingErrorReports" /v "PreventHandwritingErrorReports" /t REG_DWORD /d "1" /f
REM �菑���F���l�p�ݒ�̃f�[�^���L�𖳌��ɂ���
reg add "HKEY_LOCAL_MACHINE\MOUNT\Policies\Microsoft\Windows\TabletPC" /v "PreventHandwritingDataSharing" /t REG_DWORD /d "1" /f
REM ������ Cortana �ɂ��ʒu���̎g�p�������Ȃ�
reg add "HKEY_LOCAL_MACHINE\MOUNT\Policies\Microsoft\Windows\Windows Search" /v "AllowSearchToUseLocation" /t REG_DWORD /d "0" /f
REM �^�X�N �o�[�̃j���[�X�Ɗ֐S������L���ɂ��Ȃ�
reg add "HKEY_LOCAL_MACHINE\MOUNT\Policies\Microsoft\Windows\Windows Feeds" /v "EnableFeeds" /t REG_SZ /d "0" /f
REM ���C�u �^�C�����I�t�ɂ���
reg add "HKEY_LOCAL_MACHINE\MOUNT\Policies\Microsoft\Windows\CurrentVersion\PushNotifications" /v "NoCloudApplicationNotification" /t REG_DWORD /d "0" /f
REM �ݒ�@�v���C�o�V�[�@�S��
REM [�A�v���̎g�p�󋵂Ɋ�ă��[�U�[�ɍ��킹���L����\�����邽�߂ɁA�L�����ʎq�̎g�p���A�v���ɋ����܂� (�I�t�ɂ���ƁAID �����Z�b�g����܂�)]
reg add "HKEY_LOCAL_MACHINE\MOUNT\Microsoft\Windows\CurrentVersion\AdvertisingInfo" /v "Enabled" /t REG_DWORD /d "0" /f
REM �L�� ID �𖳌��ɂ���
reg add "HKEY_LOCAL_MACHINE\MOUNT\Policies\Microsoft\Windows\AdvertisingInfo" /v "DisabledByGroupPolicy" /t REG_DWORD /d "1" /f
REM �T�C���C�����̃G�N�X�y���G���X�v���C�o�V�[�ݒ�𖳌��ɂ���
reg add "HKEY_LOCAL_MACHINE\MOUNT\Policies\Microsoft\Windows\OOBE" /v "DisablePrivacyExperience" /t REG_DWORD /d "1" /f
REM OneDrive ���t�@�C���L����Ƃ��Ďg�p�ł��Ȃ��悤�ɂ���
reg add "HKEY_LOCAL_MACHINE\MOUNT\Policies\Microsoft\Windows\OneDrive" /v "DisableFileSyncNGSC" /t REG_DWORD /d "1" /f
REM OneDrive �ɃT�C���C������܂� OneDrive �̃l�b�g���[�N �g���t�B�b�N����������Ȃ��悤�ɂ��܂�
reg add "HKEY_LOCAL_MACHINE\MOUNT\Microsoft\OneDrive" /v "PreventNetworkTrafficPreUserSignIn" /t REG_DWORD /d "1" /f
REM �p�X���[�h�̗L������
reg add "HKEY_LOCAL_MACHINE\MOUNT\Microsoft\Windows\CurrentVersion\RunOnce" /v "PassAge" /t REG_SZ /d "net accounts /maxpwage:unlimited" /f
REM �ݒ�́u�Q�[���v���\���ɂ���
reg add "HKEY_LOCAL_MACHINE\MOUNT\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "SettingsPageVisibility" /t REG_SZ /d "hide:gaming-broadcasting;gaming-gamebar;gaming-gamedvr;gaming-gamemode;quietmomentsgame;gaming-xboxnetworking" /f
reg unload HKLM\MOUNT

REM ���W�X�g���̕ύX�iHKEY_USERS�j
reg load HKEY_USERS\TEMP %cpath%\Mount\Users\Default\NTUSER.DAT
REM [Web �T�C�g�����ꃊ�X�g�ɃA�N�Z�X�ł���悤�ɂ��āA�n��ɓK�����R���e���c��\������]
reg add "HKEY_USERS\TEMP\SOFTWARE\Microsoft\Windows\CurrentVersion\RunOnce" /v "HttpAcceptLanguageOptOut" /t REG_SZ /d "reg add \"HKEY_CURRENT_USER\Control Panel\International\User Profile\" /v \"HttpAcceptLanguageOptOut\" /t REG_DWORD /d \"1\" /f" /f
reg add "HKEY_USERS\TEMP\Control Panel\International\User Profile" /v "HttpAcceptLanguageOptOut" /t REG_DWORD /d "1" /f
REM [Windows �ǐՃA�v���̋N���������ăX�^�[�g��ʂƌ������ʂ̎������サ�܂�]
reg add "HKEY_USERS\TEMP\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "Start_TrackProgs" /t REG_DWORD /d "0" /f
REM �u�ݒ�A�v���ł������߂̃R���e���c��\������v
reg add "HKEY_USERS\TEMP\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SubscribedContent-338393Enabled" /t REG_DWORD /d "0" /f
reg add "HKEY_USERS\TEMP\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SubscribedContent-353694Enabled" /t REG_DWORD /d "0" /f
reg add "HKEY_USERS\TEMP\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SubscribedContent-353696Enabled" /t REG_DWORD /d "0" /f
REM ����
reg add "HKEY_USERS\TEMP\SOFTWARE\Microsoft\Windows\CurrentVersion\Search" /v "SearchboxTaskbarMode" /t REG_DWORD /d "0" /f
REM �j���[�X�Ɗ֐S����
reg add "HKEY_USERS\TEMP\SOFTWARE\Microsoft\Windows\CurrentVersion\Feeds" /v "ShellFeedsTaskbarViewMode" /t REG_DWORD /d "2" /f
REM Cortana�̃{�^����\������
reg add "HKEY_USERS\TEMP\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "ShowCortanaButton" /t REG_DWORD /d "0" /f
REM �^�X�N�r���[�{�^����\������
reg add "HKEY_USERS\TEMP\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "ShowTaskViewButton" /t REG_DWORD /d "0" /f
REM �^�X�N�o�[��People��\������
reg add "HKEY_USERS\TEMP\SOFTWARE\Policies\Microsoft\Windows\Explorer" /v "HidePeopleBar" /t REG_DWORD /d "1" /f
REM Windows Ink���[�N�X�y�[�X�{�^����\��
reg add "HKEY_USERS\TEMP\SOFTWARE\Microsoft\Windows\CurrentVersion\PenWorkspace" /v "PenWorkspaceButtonDesiredVisibility" /t REG_DWORD /d "0" /f
REM �^�b�`�L�[�{�[�h�{�^����\��
reg add "HKEY_USERS\TEMP\SOFTWARE\Microsoft\TabletTip\1.7" /v "TipbandDesiredVisibility" /t REG_DWORD /d "0" /f
REM [��������c] 
reg add "HKEY_USERS\TEMP\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "HideSCAMeetNow" /t REG_DWORD /d "1" /f
REM �u�X�^�[�g��ʂ܂��̓^�X�N �o�[�̃W�����v ���X�g�ɍŋߊJ�������ڂ�\������v
reg add "HKEY_USERS\TEMP\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "Start_TrackDocs" /t REG_DWORD /d "0" /f
REM [�Ƃ��ǂ��X�^�[�g���j���[�ɂ������߂̃A�v����\������] 
reg add "HKEY_USERS\TEMP\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SubscribedContent-338388Enabled" /t REG_DWORD /d "0" /f
reg add "HKEY_USERS\TEMP\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SystemPaneSuggestionsEnabled" /t REG_DWORD /d "0" /f
REM �u�V�@�\�Ƃ������߂��m�F���邽�߂ɁA�X�V�̌�ƁA�T�C���C�����ɂƂ��ǂ��A[Windows �ւ悤����] �̏���\������v
reg add "HKEY_USERS\TEMP\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SubscribedContent-310093Enabled" /t REG_DWORD /d "0" /f
REM �uWindows ���g����ł̃q���g�₨���߂̕��@���擾����v
reg add "HKEY_USERS\TEMP\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SubscribedContent-338389Enabled" /t REG_DWORD /d "0" /f
REM Windows���g�p���邽�߂̃q���g
reg add "HKEY_USERS\TEMP\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v SoftLandingEnabled /t REG_DWORD /d 0 /f
REM Windows 10�ŃJ�X�^�}�C�Y���ꂽ�G�N�X�y���G���X�𖳌��ɂ���
reg add "HKEY_USERS\TEMP\SOFTWARE\Microsoft\Windows\CurrentVersion\Privacy" /v "TailoredExperiencesWithDiagnosticDataEnabled" /t REG_DWORD /d "0" /f
REM �����w�K�@�\���I�t�ɂ���
reg add "HKEY_USERS\TEMP\SOFTWARE\Microsoft\InputPersonalization" /v "RestrictImplicitInkCollection" /t REG_DWORD /d "1" /f
reg add "HKEY_USERS\TEMP\SOFTWARE\Microsoft\InputPersonalization" /v "RestrictImplicitTextCollection" /t REG_DWORD /d "1" /f
REM �^�C�s���O�Ǝ菑������
reg add "HKEY_USERS\TEMP\SOFTWARE\Microsoft\InputPersonalization\TrainedDataStore" /v "HarvestContacts" /t REG_DWORD /d "0" /f
REM ���[�U�[�����}�C�N���\�t�g�ɑ��M���Ȃ�
reg add "HKEY_USERS\TEMP\SOFTWARE\Microsoft\Personalization\Settings" /v "AcceptedPrivacyPolicy" /t REG_DWORD /d "0" /f
REM �o�^����Ă���g���q�͕\�����Ȃ�
reg add "HKEY_USERS\TEMP\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "HideFileExt" /t REG_DWORD /d "0" /f
REM �f�X�N�g�b�v�Ɂu�l�b�g���[�N�v�̃A�C�R����ǉ�
reg add "HKEY_USERS\TEMP\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel" /v "{F02C1A0D-BE21-4350-88B0-7367FC96EF3C}" /t REG_DWORD /d "0" /f
REM �f�X�N�g�b�v�Ɂu���[�U�[�̃t�@�C���v�̃A�C�R����ǉ�
reg add "HKEY_USERS\TEMP\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel" /v "{59031a47-3f72-44a7-89c5-5595fe6b30ee}" /t REG_DWORD /d "0" /f
REM �f�X�N�g�b�v�Ɂu�R���s���[�^�[�v�̃A�C�R����ǉ�
reg add "HKEY_USERS\TEMP\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel" /v "{20D04FE0-3AEA-1069-A2D8-08002B30309D}" /t REG_DWORD /d "0" /f
REM �f�X�N�g�b�v�Ɂu���ݔ��v�̃A�C�R����ǉ�
reg add "HKEY_USERS\TEMP\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel" /v "{645FF040-5081-101B-9F08-00AA002F954E}" /t REG_DWORD /d "0" /f
REM OneDrive�̃Z�b�g�A�b�v���Ȃ�
reg delete "HKEY_USERS\TEMP\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "OneDriveSetup" /f
reg delete "HKEY_USERS\TEMP\SOFTWARE\Microsoft\OneDrive" /f
reg unload "HKEY_USERS\TEMP"

REM �����t�@�C���R�s�[
if exist %cpath%\Unattend.xml (
	md %cpath%\Mount\Windows\Panther
	copy %cpath%\Unattend.xml %cpath%\Mount\Windows\Panther\Unattend.xml
)

if exist %cpath%\Script\*.cmd (
	md %cpath%\Mount\Windows\Setup\Scripts
	copy /Y %cpath%\Script\*.cmd %cpath%\Mount\Windows\Setup\Scripts\
)

REM �X�^�[�g���j���[�̃e���v���[�g
if exist %cpath%\LayoutModification.xml (
	copy %cpath%\LayoutModification.xml %cpath%\Mount\Users\Default\AppData\Local\Microsoft\Windows\Shell\LayoutModification.xml
)

REM �s�v�ȃV���[�g�J�b�g�̍폜
del "%cpath%\Mount\Users\Default\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\OneDrive.lnk"

REM �㏈��
Dism /Cleanup-Image /Image:%cpath%\Mount /StartComponentCleanup /ResetBase
Dism /Unmount-Image /MountDir:%cpath%\Mount /Commit
REM UnMount�������Export���邱�ƂŃf�B�X�N�T�C�Y�k��
Dism /Export-Image /SourceImageFile:%cpath%\install.wim /SourceIndex:1 /DestinationImageFile:%cpath%\install_cleaned.wim
Del /Q %cpath%\install.wim
Ren %cpath%\install_cleaned.wim install.wim

REM 4GB�����̏ꍇ��FAT32�ɃR�s�[�o���Ȃ��̂ŕ�������i����4���Ŕ�r�j
set file_name=%cpath%\install.wim
for %%i in (%file_name%) do set file_size=%%~zi
if %file_size:~0,4% geq %maxsize% (
	Dism /Split-Image /ImageFile:%cpath%\install.wim /SWMFile:%cpath%\install.swm /FileSize:4000
)
rd %cpath%\Mount
endlocal
pause