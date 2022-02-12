function perform()
{
	A=$((RANDOM%2))
	if [ $A -eq 0 ]
	then
		heads=$((heads+1))
		return $(($heads-$tails))
	else
		tails=$((tails+1))
		return $(($tails-$heads))
	fi
	
}

heads=0
tails=0
while [ $heads -ne 21 -a $tails -ne 21 ]
do
	A=$((RANDOM%2))
	if [ $A -eq 0 ]
	then
		heads=$((heads+1))
	else
		tails=$((tails+1))
	fi
done
echo "heads: $heads"
echo "tails: $tails"
if [ $heads -gt $tails ]
then
	echo "heads won by $(($heads-$tails)) "
elif [ $tails -gt $heads ]
then
	echo "tails won by $(($tails-$heads)) "
else
	diff=0
	while [ $diff -eq 2 ]
	do
		diff=perform $heads $tails
	done
	if [ $heads -gt $tails ]
	then
		echo "heads won by $(($heads-$tails)) "
	else
		echo "tails won by $(($tails-$heads)) "
	fi
fi

