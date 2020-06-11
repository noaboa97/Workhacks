# Workhacks
Hacks I use at work which make my life easier and to have it my way.


### enable_disableTraps Batchfile
Enables or disables the traps service with the CLI Tool cytool from Traps.

Can also be used to start or stop other services

-Paste your Password on Line 16, between your password and pipe no space! otherwise it won't work

### enable_disableTraps PS File
Enables or disables the traps service with the CLI Tool cytool from Traps.

Script rewritten in PowerShell. Password is now stored encrypted in the C: Drive as an XML. If XML isn't present it prompts to enter the password.




### removeChromePolicies
Removes all Chrome Policies except for the UpdateCheckin set by the company's GPO.

Set the path to the PS Script in the batch file.
Put the batch file in autostart folder to start the PS Script on every startup or create a schedule task.


