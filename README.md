# Windows10のキッティング

新規インストールした時に不要なストアアプリが入ってたり、使わないOneDriveが入ったりしないようにインストールイメージを変更する為のバッチファイル  

```
├── Setup.cmd
├── Patch/
├── StoreApp/
├── Drivers/
├── Script/
├── install.esd
├── LayoutModification.xml
└── Unattend.xml
```

Patch内には*.msuを置くことで事前にパッチを当てます。  

StoreApp内にはAppxやAppxBundle、Msixbundleなどのストアアプリを置くことでインストールされます。  

LayoutModification.xmlを置くとUsers\Default\AppData\Local\Microsoft\Windows\Shellへコピーされます。  

Unattend.xmlを置くと応答ファイルとしてコピーされます。※Windows System Image Managerで作成してください。  

最低限Setup.cmdとinstall.esdがあれば動くと思います。  

  

### 【やっている事】  

install.esdをinstall.wimにエクスポートして、Mountへマウント  

プロビジョニングパッケージを全削除（WindowsStoreも削除しますので必要な場合はコメントアウトするかStoreApp内へ必要なファイルをコピーしてください）  

ファックスなどCapabilityを削除  

InternetExplorerの削除  

StoreApp内のパッケージ追加※有る場合  

Patch内のパッチ当て※有る場合  

Drivers内の1つ下のフォルダ内の*.inf追加※有る場合  

デフォルトのレジストリ変更（主にプライバシー関連の変更とWindows10 22H2以外への更新禁止、パスワードの有効期限を無期限に変更、OneDriveのセットアップしない）※バッチ内のコメント参照  

応答ファイルコピー※有る場合  

Script内の*.cmdを%windir%\Setup\Scripts\にコピー※有る場合  
※OEMだとSetupComplete.cmdは自動で実行されないので応答ファイルのRunSynchronousで指定してください。  

スタートメニューのテンプレートコピー※有る場合  

OneDriveのショートカット削除  

マウント解除してinstall.wimが4GBを超えて居たら分割
