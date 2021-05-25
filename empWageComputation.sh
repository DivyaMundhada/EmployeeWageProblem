#! /bin/bash -x

echo Welcome to shell script

IS_PRESENT_FULL_TIME=1
IS_PRESENT_PART_TIME=2
EMP_RATE_PER_HR=20
totalworkinghrs=0
day=0
function getworkhrs() {
        local empCheck=$1
        local empHrs=0
        case $empCheck in
                $IS_PRESENT_FULL_TIME) empHrs=8 ;;
                $IS_PRESENT_PART_TIME) empHrs=4 ;;
                *) empHrs=0 ;;
        esac
        echo $empHrs
}

while [ $day -lt 20 ] & [ $totalworkinghrs -lt 80 ]
do
        empCheck=$(( RANDOM % 3 ))
        empHrs="$( getworkhrs $empCheck )"
        totalworkinghrs=$(( totalworkinghrs + empHrs ))
        salary=$(( empHrs * EMP_RATE_PER_HR ))
     #   echo "$salary"
        ((day++))
done
totalsalary=$((totalworkinghrs*EMP_RATE_PER_HR))
echo Total Working Hours:$totalworkinghrs
echo Total Salary:$totalsalary

