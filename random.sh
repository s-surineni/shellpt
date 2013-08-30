echo enter two numbers with a space between them
read low high
count=7
echo you have entered $low and $high
ans=$[$RANDOM%$high]
#echo $ans
if [ "$ans" -lt "$low" ]  
then
ans=$(($ans + $low+1))
fi
#echo answer $ans
echo the number has been generated
echo the game begins now
echo choose a number between $low and $high
read guess
while [ "$guess" -ne "$ans" ] && [ "$count" -ge 1 ]
do
if [ "$guess" -lt "$low" ]
then
 echo please input a number in the range specified
elif [ "$guess" -gt "$high" ]
then
echo please input a number in the range specified
elif [ "$guess" -gt "$low" ] & [ "$ans" -gt "$guess" ]
then
low=$guess
elif [ "$guess" -lt "$high" ]
then
high=$guess
fi
echo choose a number between $low and $high
read guess
count=$(($count-1))
done
echo congrastulations!! $guess is the answer

