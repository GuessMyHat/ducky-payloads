# ABOUT THIS PAYLOAD
Copy all the scripts into the root of your ducky <br>
Replace the string "[DRIVE_LETTER]" with the ducky USB letter assigned by the target machine

## About the drive_tree.bat script
This script doesn't need to be run with elevated privileges, for this reason i put this script under the /Users/ directory instead of the /Administrators/ directory <br>
This script is simply going to change the drive directory to "C:\" (which is the disk where is usually installed the OS) and run the command "tree". <br>
Tree is a native Windows tool that allows you to see a "tree" of how your files are stored inside the drive. <br>
This script will map the entire C:\ drive from the root and recursively on all the subdirectories
Remember to change the PATH and/or the drive letter from the original script in order to let it run properly and print the output on the right location <br>
This will take a while since you plug the rubber ducky into the target machine, also depending on how many files are stored inside the drive: if you unplug it before the script ends, you will still be able to see the directories processed, even if the mapping process didn't end

## Optional:
Create an empty folder into the root of the ducky named "output" to save all the output inside of it <br>
Anyways, you can also print the output files into the root or inside another directory by editing the output path inside the scripts code
