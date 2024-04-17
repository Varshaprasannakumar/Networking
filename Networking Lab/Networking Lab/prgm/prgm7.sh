#AUTHOR:VARSHA P NAIR

echo "Enter the coefficients of the quadratic equation (a, b, c): "
read a b c
discriminant=$((b*b - 4*a*c))
if [ $discriminant -lt 0 ]; then
    echo "The quadratic equation has no real roots."
else
    if [ $b -ge 0 ]; then
        root1=$(echo "scale=2; (-$b + sqrt($discriminant)) / (2*$a)" | bc)
        root2=$(echo "scale=2; (-$b - sqrt($discriminant)) / (2*$a)" | bc)
    else
        # If b is negative, we need to encapsulate it in parentheses to ensure correct computation
        root1=$(echo "scale=2; (-($b) + sqrt($discriminant)) / (2*$a)" | bc)
        root2=$(echo "scale=2; (-($b) - sqrt($discriminant)) / (2*$a)" | bc)
    fi
    echo "The roots of the quadratic equation are: $root1 and $root2"
fi
