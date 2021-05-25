#! /bin/bash -x

echo Welcome to shell script

IS_PRESENT_FULL_TIME=1
IS_PRESENT_PART_TIME=2
EMP_RATE_PER_HR=20

empCheck=$(( RANDOM % 3))

if [ $empCheck -eq $IS_PRESENT_FULL_TIME ]
then
        empHrs=8
elif [ $empCheck -eq $IS_PRESENT_PART_TIME ]
then
        empHrs=4
else
        empHrs=0
fi
salary=$(( empHrs * EMP_RATE_PER_HR ))

echo Salary of employee is $salary
