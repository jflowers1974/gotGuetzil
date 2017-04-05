#! /bin/bash
echo "Running guetzli on a TEST JPEG image:"
echo "Please ensure the file is called:  TestImage.jpg"
echo "================================================"

# A quality setting >100 doesn't seem to be worth it at all
#
for ((i=84; i<=100; i++))
do
	#Timing of the function
	#Performing the compression on the TestImage.jpg
	#
	STARTTIME=$(date +%s)
	guetzli --quality $i TestImage.jpg test$i.jpg
	ENDTIME=$(date +%s)

	#How big is the output file Size
	#
	FILESIZE=$(ls -l test$i.jpg | awk '{ print $5}')
	echo "Quality(i): $i, Time (Seconds): $(($ENDTIME - $STARTTIME)), Size (Bytes): $FILESIZE"

	#I had a old computer, and needed to sleep in order to not over stress
	#You can probably comment this sleep out
	#
	sleep 1200
done

exit 0
