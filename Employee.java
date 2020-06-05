public class Employee{
public static void main(String[] args){
	System.out.println("Welcome to Employee Wage Computation Program\n");
	int attendance = (int)((Math.random() * 10) % 2);
	int workingDays =20;
	int totalHours = 100;
	int isPresent = 1;
	int isAbsent = 0;
	int isFullTime = 1;
	int isPartTime = 2;
	int totalWage = 0;
	int empHours = 0;
	int empRatePerHour = 20;
	int salary = 0;
	if( attendance == 1){
		System.out.println("Employee Present");
		empHours = 8;
	}
	else {
		System.out.println("Employee Absent");
	}
	for(int i = 0; i < workingDays; i++){
		if(attendance == 1) {
			int time = (int) ((Math.random() * 10) % 3);
			switch (time) {
			case 1:
				//System.out.println("Full Time");

				break;
			case 2:
				//System.out.println("Part Time");
				empHours = 4;
				break;
			default:
				break;
			}
			salary =salary + (empHours * empRatePerHour);
			}
		}
	System.out.println("Total salary :"+salary);
	}
}
