read -p "Enter the number: " number

echo $number

i=1

while [ $i -le 64 ]
do
table=$(($number*$i))
((i++))
echo "Table of the number: "$table
done
