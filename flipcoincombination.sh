declare -A arr
heads=0
tails=0
for count in `seq 10`
do
	arr[$count]=$((RANDOM%2))
	a1=${arr[$count]}
	if [ $a1 -eq 0 ]
	then
		heads=$((heads+1))
	else
		tails=$((tails+1))
	fi
done
value_H=$(($heads*100))
value_H=$(($value_H/${#arr[@]}))
echo  "There are $value_H percentage heads and $((100-$value_H)) percentage tails"
