#! /bin/bash 

echo 'Welcome to Employee Wage Computation Program'


FULL_TIME=8
PART_TIME=4

WAGE_PER_HOUR=20
MAX_NO_OF_DAYS=20

MAX_NO_OF_DAYS=20
MAX_NO_OF_HOUR=100

total_working_hours=0
total_working_days=0
total_wage=0
total_absent_days=0
total_days=0

get_attendance(){

    employee_attendance=$(( RANDOM%6 ))
    if [ $employee_attendance -ne 0 ]
    then
        echo 1
    else
        echo 0
    fi

}


get_daily_wage(){

    local per_day_work_hour=0

    case  $(( RANDOM%2 )) in
                        0) per_day_work_hour=$FULL_TIME;;
                        1) per_day_work_hour=$PART_TIME;;
                        *) per_day_work_hour=0;;
    esac

    echo $(( WAGE_PER_HOUR * per_day_work_hour ))
}


while [[ $total_working_days -le $MAX_NO_OF_DAYS && $total_days -le $MAX_NO_OF_DAYS  && $total_working_hours -le $MAX_NO_OF_HOUR ]]
do
       ((total_days++))

       if [ $( get_attendance ) -eq 0 ]
       then
          
          ((total_absent_days++))
           
       else

          ((total_working_days++))

           daily_wage=$(get_daily_wage)

           total_wage=$(( total_wage + daily_wage ))

       fi
done

echo "Total Working Days: " $total_working_days
echo "Total Absent Days: " $total_absent_days

echo "Total Wage: "$total_wage

echo "Total_days: "$total_days


