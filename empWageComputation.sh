#! /bin/bash -x

echo Welcome to shell script

IS_PRESENT_FULL_TIME=1
IS_PRESENT_PART_TIME=2
EMP_RATE_PER_HR=20
totalworkinghrs=0
day=0
while [ $day -lt 20 ] & [ $totalworkinghrs -lt 80 ]
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
((day++))
done
totalsalary=$((totalworkinghrs*EMP_RATE_PER_HR))
echo Total Salary:$totalsalary
