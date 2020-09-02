$Logfile = "C:\Temp\PS Scripts\Logs\removeChromePolicies.log"
$val = Get-Item -Path Registry::HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Google\Chrome -ErrorAction Ignore
if ($val -ne $null){

    Remove-Item -Path Registry::HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Google\Chrome -Recurse

    if((Get-Item -Path Registry::HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Google\Chrome -ErrorAction Ignore) -eq $null){
        Add-Content -Path $Logfile -Value "$(get-date -Format "dd.MM.yyyy_HH.mm.ss"): Chrome Policies deleted"
    }
    
}
else {

    Add-Content -Path $Logfile -Value "$(get-date -Format "dd.MM.yyyy_HH.mm.ss"): No Chrome Policies found"

}