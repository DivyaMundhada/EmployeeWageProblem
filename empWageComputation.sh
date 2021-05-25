#! /bin/bash -x

echo Welcome to shell script

IS_PRESENT_FULL_TIME=1
IS_PRESENT_PART_TIME=2
EMP_RATE_PER_HR=20
totalworkinghrs=0
for ((i=0;i<=20;i++))
do
empCheck=$(( RANDOM % 3 ))
case $empCheck in
        $IS_PRESENT_FULL_TIME) empHrs=8 ;;
        $IS_PRESENT_PART_TIME) empHrs=4 ;;
        *) empHrs=0 ;;
esac
totalworkinghrs=$(( totalworkinghrs + empHrs ))
salary=$(( empHrs * EMP_RATE_PER_HR ))
echo "$salary"
done
totalsalary=$((totalworkinghrs*EMP_RATE_PER_HR))
echo Total Salary:$totalsalary
