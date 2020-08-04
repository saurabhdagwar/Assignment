#!/bin/bash
read -p "Enter a single digit number : " day
case $day in
   1)
          echo "Monday" ;;
   2)
          echo "Tuesday" ;;
   3)
          echo "Wednesday" ;;
   4)
          echo "Thusday" ;;
   5)
          echo "Friday" ;;
   6)
          echo "Saturday" ;;
   7)
          echo "Sunday" ;;
   *)
          echo "Enter valid number " ;;
esac

