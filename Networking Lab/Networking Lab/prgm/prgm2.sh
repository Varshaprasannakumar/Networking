#AUTHOR:VARSHA P NAIR

echo "Enter year (YYYY): "
read y
if [ `expr $y % 400` -eq 0 ]
then
echo leap year
elif [ `expr $y % 100` -eq 0 ]
then
echo not a leap year
elif [ `expr $y % 4` -eq 0 ]
then
echo "$y is leap year"
else
echo "$y is not a leap year"
fi

