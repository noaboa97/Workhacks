$val = Get-ItemProperty -Path Registry::HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Google -Name * -ErrorAction Ignore
if ($val -ne $null){

Remove-ItemProperty -Path Registry::HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Google\ -Name *}
