#! /bin/bash -x

echo Welcome to shell script

IS_PRESENT=1

EMP_RATE_PER_HR=20

empCheck=$(( RANDOM % 2 ))


if [ $empCheck -eq $IS_PRESENT ]
then
        empHrs=8
        salary=$(( EMP_RATE_PER_HR * empHrs ))
else
        salary=0
fi
echo Salary of employee is $salary
