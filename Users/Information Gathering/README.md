# ABOUT THIS PAYLOAD
Copy all the scripts into the root of your ducky <br>
Replace the string "[DRIVE_LETTER]" with the ducky USB letter assigned by the target machine

## About the information_gathering.bat script
This script doesn't need to be run with elevated privileges, for this reason i put this script under the /Users/ directory instead of the /Administrators/ directory <br>
What it's going to do is simply opening a cmd instance and run some commands like systeminfo, ipconfig /all, netstat... to retrieve some usefult information about the target <br>
Remember to change the PATH and/or the drive letter from the original script in order to let it run properly and print the output on the right location
This will take about 5 seconds since you plug the rubber ducky into the target machine

## Optional:
Create an empty folder into the root of the ducky named "output" to save all the output inside of it <br>
Anyways, you can also print the output files into the root or inside another directory by editing the output path inside the scripts code
