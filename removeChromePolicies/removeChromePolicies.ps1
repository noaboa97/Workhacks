$val = Get-Item -Path Registry::HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Google\Chrome -ErrorAction Ignore
if ($val -ne $null){

Remove-Item -Path Registry::HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Google\Chrome -Recurse}
