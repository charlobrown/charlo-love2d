# How to build (Windows)
1. Install [LÖVE2D](https://love2d.org/#download).
2. Use WinRAR or 7-Zip (Or another tool that can zip files) to zip all files in the "src" folder.
3. Rename the zipped file from `charlo.zip` to `charlo.love`.

(Naming the zipped file as "charlo" can be important if you don't know how to use cmd in steps 5-7)

4. Move or copy `love.exe` (And necessary DLLs) to the folder or directory where `charlo.love` is.
5. Press Win + R and type "cmd".
6. In the terminal (Command Prompt), set your current directory to the directory where `charlo.love` is.
7. Type in, `copy /b love.exe+charlo.love charlo.exe`
## Editing metadata and icon (Optional)
1. [Download Resource Hacker](https://www.angusj.com/resourcehacker/#download). (Recommended: EXE install)
2. Open Resource Hacker
3. Open `charlo.exe`
### Icon
1. Go to "Icon".
2. Click on one of the icons and press `Ctrl + R`.
3. Click on "Open file with new icon".
4. Open `charlo.ico` (Or another .ico file you have)
5. Click "Replace"
### Metadata & Version Info
1. Go to "Version Info".
2. Click on the first result
3. An editor view should pop up on the right side.
4. Edit the values to your desired values. (Or copy the metadata used in the published release `.exe` instead)
```txt

1 VERSIONINFO
FILEVERSION 1,3,3,7
PRODUCTVERSION 1,3,3,7
FILEOS 0x40004
FILETYPE 0x1
{
BLOCK "StringFileInfo"
{
	BLOCK "040904B0"
	{
		VALUE "FileDescription", "Charlo"
		VALUE "FileVersion", "69.420"
		VALUE "CompanyName", "Charlo inc."
		VALUE "LegalCopyright", "Copyright 2026 Charlo Brown"
		VALUE "ProductName", "Charlo"
		VALUE "ProductVersion", "420.69"
		VALUE "OriginalFilename", "charlo.exe"
	}
}

BLOCK "VarFileInfo"
{
	VALUE "Translation", 0x0409 0x04E4  
}
}
```
