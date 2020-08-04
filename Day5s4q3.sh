#!/bin/bash
read -p "Enter a single digit number : " number
case $number in
   1)
          echo "unit" ;;
   10)
          echo "Ten" ;;
   100)
          echo "Hundred" ;;
   1000)
          echo "Thousand" ;;
   10000)
	  echo "Lakh" ;;
   *)
	  echo "Enter valid Digit" ;;
esac
