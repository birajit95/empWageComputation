#! /bin/bash 

echo 'Welcome to Employee Wage Computation Program'


get_attendance(){

    employee_attendance=$(( RANDOM%6 ))
    if [ $employee_attendance -ne 0 ]
    then
        echo 1
    else
        echo 0
    fi

}
