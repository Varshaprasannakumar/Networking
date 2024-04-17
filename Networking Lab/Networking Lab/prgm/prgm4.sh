#AUTHOR:VARSHA P NAIR
#REGISTER NUMBER:SJC23MCA-2060

echo "Enter the number" 
read num
reverse=$(echo "$num" | rev)
if [ "$num" -eq "$reverse" ]; then
 echo "$num is same when reversed."
else
 echo "$num is not same when reversed."
fi
