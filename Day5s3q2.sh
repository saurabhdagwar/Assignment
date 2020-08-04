#!/bin/bash
read -p "Enter a number Week day " num
if [ $num -eq 1 ]
then echo "Sunday"
elif [ $num -eq 2 ]
then echo "Monday"
elif [ $num -eq 3 ]
then echo "Tuesday"
elif [ $num -eq 4 ]
then echo "Wednesday"
elif [ $num -eq 5 ]
then echo "Thusday"
elif [ $num -eq 6 ]
then echo "Six"
elif [ $num -eq 7 ]
then echo "Friday"
elif [ $num -eq 8 ]
then echo "Saturday"
else
echo "Please enter number betn 1 to 7"
fi

