# HIDDEN SCRIPT INJECTION

Hi everyone, in this repo you can find all you need to inject a script without prompting anything on the target machine, except the "run" program to execute the script.

All you need to do in order to do this is to copy the following files inside the root of your rubber ducky:
- hidden_shell.vbs: this vbs script will run your bat script in a hidden window
- b.bat: this will be the real script you will inject (IT'S EMPTY, add your code inside of it or call your own script by replacing "b.bat" with your script name inside the vbs file)
- payload.dd: of course you'll need to start everything from the payload.dd file

As i said: the b.bat file you can find here is EMPTY: feel free to write your code inside of it or simply copy and past your script renaming it into "b.bat"

WARNING: in order to run the injection properly you'll need to edit the "payload.dd" file by replacing [DRIVE_LETTER] with the correct PATH/Letter of your scripts location and the same thing must be done with the "hidden_shell.vbs" and your ".bat" scripts

## Supported OS: Windows
Actually i tested only on Windows 10 and Windows 11 machines, but it should work as well even on previous Windows OS and Windows Server OS

## Why a batch script instead of a Powershell script?
Well, simply because i noticed that batch scripts have much less controls than Powershell have. <br>
When you try to run some Powershell scripts, in the majority of cases for standalone machines, you will encount some Execution Policy issues, that's because they're set to Restricted as default (you can check the status of your current Execution Policy by running "Get-ExecutionPolicy" in Powershell) <br>
Another issue that you could encounter is the default method used by the system to open the ".ps1" files, which is Notepad instead of Powershell: that's for preventing users to unawares run Powershell scripts) <br>
Of course Powershell allows you to do more things, but you won't be 100% sure to inject your script with success if you don't already know some target informations
