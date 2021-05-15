#Example .\launchwindbg.ps1 crackme
#You must run from and administrative powershell session
#You will have to run the following command before you can run powershell scripts
#Set-ExecutionPolicy -ExecutionPolicy Unrestricted 

$processid =''
$target = $args[0]
$processid=get-process "$target" |select -expand id
write-host "Connecting to " $target " PID: " $processid
Start-Process -FilePath "C:\Program Files (x86)\Windows Kits\10\Debuggers\x86\windbg.exe" -ArgumentList "-p",$processid,"-WF","C:\Workspace.WEW" -Verb RunAs
