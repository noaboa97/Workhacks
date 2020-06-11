if(Test-Path "$pscriptroot\enable_disableTraps_Cred.xml") {
  
    $credential = Import-CliXml -Path  "$pscriptroot\enable_disableTraps_Cred.xml"
    $credential = [Runtime.InteropServices.Marshal]::PtrToStringAuto([Runtime.InteropServices.Marshal]::SecureStringToBSTR((($credential))))
}
else{

    Read-host "Enter Password" -AsSecureString | Export-CliXml  -Path "$pscriptroot\enable_disableTraps_Cred.xml"

}

$state = (Get-Service -Name "CyveraService").Status

if($state -eq "Running"){



cd "c:\Program Files\Palo Alto Networks\Traps\"
cmd.exe /c "echo $credential| cytool runtime stop"

}
else{

cd "c:\Program Files\Palo Alto Networks\Traps\"
cmd.exe /c cytool runtime start

}

start-sleep 5

