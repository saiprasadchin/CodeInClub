public class EmployeeTwo{
int workingDays = 0;
int totalHours = 0;
int empHours = 0;
int empRatePerHour = 20;
int salary = 0;
public void getEmpWage(){
while( totalHours < 100 && workingDays < 20 ){
int attendance = (int)((Math.random() * 10 ) % 2);
System.out.println(attendance);
if (attendance == 1) {
workingDays++;
int time = (int) ((Math.random() * 10) % 3);
switch (time) {
case 2:
totalHours+=4;
empHours = 4;
break;
default:
totalHours+=8;
empHours = 8;
break;
}
salary = salary + (empHours * empRatePerHour);
}
}

System.out.println("Total salary :"+salary+" Hours worked:"+totalHours+" Working
Days:"+workingDays);
}
public static void main(String[] args){
Employee ep = new Employee();
System.out.println("Welcome to Employee Wage Computation Program\n");
ep.getEmpWage();
}
}
