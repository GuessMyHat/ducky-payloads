# ABOUT THIS PAYLOAD
Copy all the scripts into the root of your ducky <br>
Replace the string "[DRIVE_LETTER]" with the ducky USB letter assigned by the target machine

## About the wifi password grabber.bat script
This script doesn't need to be run with elevated privileges, for this reason i put this script under the /Users/ directory instead of the /Administrators/ directory
What it's going to do is simply opening a cmd instance and run powershell to execute a concatenated script which will take all the wlan profiles locally saved on the machine and print them with the key contents in clear text into an output files <br>
Remember to change the PATH and/or the drive letter from the original script in order to let it run properly and print the output on the right location
This will take about 5 seconds since you plug the rubber ducky into the target machine (depending on how many wlan profiles the target machine has saved)

## Optional:
Create an empty folder into the root of the ducky named "output" to save all the output inside of it <br>
Anyways, you can also print the output files into the root or inside another directory by editing the output path inside the scripts code
