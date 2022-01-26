#!/bin/bash -x
<<cmt
Take a number from user and check if the number is a Prime then show

that its palindrome is also prime
a. Write function check if number is Prime
b. Write function to get the Palindrome.
c. Check if the Palindrome number is also prime

cmt
read -p "Enter the number: " num

##prime function
prime()
{
	num=$1

	for ((flag=0,i=2;i<num/2;i++))
	do
		if ((num%i==0))
		then
			flag=1
			break;
		fi
	done
	if ((flag==0))
	then
		echo 1
	else
		echo 0
	fi
}

##palindrome function
palindrome()
{
	num=$1
	
	for ((rev=0;num!=0;num=num/10))
	do
		r=num%10
		rev=$(($rev*10+r))
	done
	echo $rev
}

##main function


prime_check=$(prime $num)

if ((prime_check==1))
then
	echo $num is prime
else
	echo $num not prime
fi

palCheck=$(palindrome $num)

if ((num==palCheck))
then
	echo number is palindrome
else
	echo number is not a palindrome
fi

if ((prime_check==1))
then
	if ((num==palCheck))
	then
		echo number $num is palindrome and prime
	fi
fi


