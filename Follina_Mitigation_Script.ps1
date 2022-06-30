Function showmenu {
    Clear-Host
    Write-Host "Follina Community Vulnerability Remediation ..."
    Write-Host "1. Create a copy of the registry"
    Write-Host "2. Delete registry entry"
    Write-Host "3. Import registry copy"
    Write-Host "4. Check if the system is vulnerable"
    Write-Host "5. Delete registry via WinRM"
    Write-Host "6. Exit"
}
 
showmenu
 
while(($inp = Read-Host -Prompt "Select an option") -ne "6"){
 
switch($inp){
        1 {
            Clear-Host
            Write-Host "------------------------------";
            Write-Host "Create a copy of the registry"; 
            Write-Host "------------------------------";
            $Location = Read-Host -Prompt 'Where do you want to save the registry copy?'
            reg export HKEY_CLASSES_ROOT\ms-msdt $Location
            pause;
            break
        }
        2 {
            Clear-Host
            Write-Host "------------------------------";
            Write-Host "Delete registry entry";
            Write-Host "------------------------------";
            reg delete HKEY_CLASSES_ROOT\ms-msdt /f
            pause; 
            break
        }
        3 {
            Clear-Host
            Write-Host "------------------------------";
            Write-Host "Import registry copy";
            Write-Host "------------------------------";
            $ImportLocation = Read-Host -Prompt 'Where do you have the copy of the registry?'
            reg import $ImportLocation
            pause;
            break
        }
        4 {
            Clear-Host
            Write-Host "------------------------------";
            Write-Host "Check if the system is vulnerable";
            Write-Host "------------------------------";
            reg query HKEY_CLASSES_ROOT\ms-msdt
            pause; 
            break
        }
        5 {
            Clear-Host
            Write-Host "------------------------------";
            Write-Host "Delete registry via WinRM";
            Write-Host "------------------------------";
            $Name = Read-Host "Enter your username"
            $Pass = Read-Host "Enter your password" -AsSecureString 
            $Ip = Read-Host "IP of the remote host"
            $epassword = ConvertTo-SecureString "$Pass" -AsPlainText -Force
            echo $epassword
            $cred = New-Object System.Management.Automation.PSCredential ($Name,$epassword)
            Enter-PSSession $Host -Credential $cred
            reg delete HKEY_CLASSES_ROOT\ms-msdt /f
            pause; 
            break
        }
        6 {"Exit"; break}
        default {Write-Host -ForegroundColor red -BackgroundColor white "Invalid option. Please select another option";pause}
        
    }
 
showmenu
}