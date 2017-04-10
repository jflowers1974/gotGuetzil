# gotGuetzil

A  bash script to perform automated testing with the guetzil command created by Google.

To download guetzil, visit:  https://github.com/google/guetzli

# Motivation:

I had zero understanding of this command, and wanted to better understand how best to use this tool. Since the command took a sigficant amount of time on my testing computer, I realized that I had to have a script that could execute whilst I was away.  Hence:  gotGuetzil.sh

This script will take a test image as it's input, and apply the guetzil command with incrementing levels of 'quality' while also timing how long the function takes.  All data is outputted to the screen.  

# Usage:

Be sure to add the ability for this file to execute.  In the terminal: 
>chmod +x gotGuetzil.sh <enter>

Then cd into the directory containing your test image, and make sure that the test image's filename is: "TestImage.jpg"
If you would rather not use this label, then simply modify the script to reflect the correct filename that you are using.

Finally:

>./gotGuetzil.sh <enter>

Or if you'd like the results saved into a textfile:

>./gotGuetzil.sh > results.txt <enter>
