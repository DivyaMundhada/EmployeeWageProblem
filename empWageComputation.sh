#! /bin/bash -x

echo Welcome to shell script

isEmployeePresent=$((RANDOM%2))

if [ $isEmployeePresent -eq 1 ]
then
	echo "Employee is present"
else
	echo "Employee is absent"
fi

