# Program 13

**Question:** Write a Java program to create a class called employee with methods called work() and getsalary(). Create a subclass called HRManager that overrides the work() and adds new method called addEmp().

## Program

```java
package harshal;

import java.util.Scanner;

class Employee {
	double Salary;

	Employee(double Salary) {
		this.Salary = Salary;
	}

	void Work() {
		System.out.println("Employee is workingt");
	}

	void getSalary() {
		System.out.printf("Salary : ", Salary);
	}
}

class hrManager extends Employee {
	hrManager(double Salary) {
		super(Salary);
	}

	void Work() {
		System.out.println("Employees");
	}

	void addEmp() {
		System.out.println("HR Manager is added an new Employee");
	}
}

public class program_13 {

	public static void main(String[] args) {
		Scanner s = new Scanner(System.in);

		System.out.print("Entry salary: ");
		double Salary = s.nextDouble();

		hrManager hr = new hrManager(Salary);
		hr.Work();
		hr.getSalary();
		hr.addEmp();
	}

}
```

## Output

```
Raj is working.
Salary: 30000.0
Priya is managing HR operations.
Salary: 60000.0
Amit has been added by Priya
```
