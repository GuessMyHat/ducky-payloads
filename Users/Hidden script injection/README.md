# HIDDEN SCRIPT INJECTION

Hi everyone, in this repo you can find all you need to inject a script without prompting anything on the target machine, except the "run" program to execute the script.

All you need to do in order to do this is to copy the following files inside the root of your rubber ducky:
- hidden_shell.vbs: this vbs script will run your bat script in a hidden window
- b.bat: this will be the real script you will inject (IT'S EMPTY, use "information_gathering.bat" instead or write your own code inside of it)
- payload.dd: of course you'll need to start everything from the payload.dd file

As i said: the b.bat file you can find here is EMPTY: feel free to write down the code you want to execute

In addition, here you can find a batch script that allows you to execute some interesting command to exfiltrate some useful information and print them out in some .txt files inside your ducky: useful to do some information gathering

WARNING: in order to run the injection properly you'll need to edit the "payload.dd" file by replacing [DRIVE_LETTER] with the correct PATH/Letter of your scripts location and the same thing must be done with the "hidden_shell.vbs" and your ".bat" scripts

## Supported OS: Windows
Actually i tested only on Windows 10 and Windows 11 machines, but it should work as well even on previous Windows OS and Windows Server OS

## Why a batch script instead of a Powershell script?
Well, simply because i noticed that batch scripts have much less controls than Powershell have.
When you try to run some Powershell scripts, in the majority of cases for standalone machines, you will encount some Execution Policy issues, that's because they're set to Restricted as default (you can check the status of your current Execution Policy by running "Get-ExecutionPolicy" in Powershell)
Another issue that you could encounter is the default method used by the system to open the ".ps1" files, which is Notepad instead of Powershell: that's for preventing users to unawares run Powershell scripts)
Of course Powershell allows you to do more things, but you won't be 100% sure to inject your script with success if you don't already know some target informations

## About the information_gathering.bat script
This script doesn't need to be run with elevated privileges, for this reason i put this script under the /Users/ directory instead of the /Administrators/ directory
What it's going to do is simply opening a cmd instance and run some commands like systeminfo, ipconfig /all, netstat... to retrieve some usefult information about the target
Remember to change the PATH and/or the drive letter from the original script in order to let it run properly and print the output on the right location
This will take about 3 seconds since you plug the rubber ducky into the target machine
