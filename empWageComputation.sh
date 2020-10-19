#! /bin/bash 

echo 'Welcome to Employee Wage Computation Program'


FULL_TIME=8
PART_TIME=4

WAGE_PER_HOUR=20


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
