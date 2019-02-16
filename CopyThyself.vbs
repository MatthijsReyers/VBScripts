	'making an object for the filesystem
dim filesys
set filesys=CreateObject("Scripting.FileSystemObject")

	'geting username
strUser = CreateObject("WScript.Network").UserName

	'making startup folder location
StartupFolderLoc = "C:\Users\"&strUser&"\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\"

	'getting filename & location
strFile = Wscript.ScriptName
strLocation = CreateObject("Scripting.FileSystemObject").GetParentFolderName(WScript.ScriptFullName)&"\"&strFile 

	'Copy to startup folder
filesys.CopyFile strLocation, StartupFolderLoc

	'Create Shell object
Dim objShell
Set objShell = Wscript.CreateObject("WScript.Shell")

	'Message to user
MsgBox "A VBScript has been run on your PC.", VBOK, "Hi "&strUser
