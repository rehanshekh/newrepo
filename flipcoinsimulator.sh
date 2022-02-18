i=0
j=0
while [[ $i -lt 21 && $j -lt 21 ]]
do
a=$((RANDOM%2))
case $a in
      0)
((i++))
      ;;
      1)
((j++))
      ;;
esac
done
echo $i Heads
echo $j Tails
sum=$(($i + $j))
if [ $i -eq 21 ]
then
y=$(($i - $j))
echo heads won by $y flips
elif [ $j -eq 21 ]
then
z=$(($j - $i))
echo tails won by $z flips
else echo tie
fi
h=`echo $i $sum | awk '{print (($1/$2)*100)}'`
echo $h% heads
j=`echo $j $sum | awk '{print (($1/$2)*100)}'`
echo $j% tails
