# Program 06

**Question:** Write a program to accept following information about an employee using methods and display: Name, Qualification, Department & salary.

## Program

```java
import java.util.Scanner;

public class Employee {
    String name, qualification, department;
    double salary;

    void acceptDetails() {
        Scanner s = new Scanner(System.in);
        System.out.print("Enter Name: ");
        name = s.nextLine();
        System.out.print("Enter Qualification: ");
        qualification = s.nextLine();
        System.out.print("Enter Department: ");
        department = s.nextLine();
        System.out.print("Enter Salary: ");
        salary = s.nextDouble();
    }

    void displayDetails() {
        System.out.println("--- Employee Details ---");
        System.out.println("Name          : " + name);
        System.out.println("Qualification : " + qualification);
        System.out.println("Department    : " + department);
        System.out.println("Salary        : " + salary);
    }

    public static void main(String[] args) {
        Employee emp = new Employee();
        emp.acceptDetails();
        emp.displayDetails();
    }
}
```

## Output

```
Enter Name: Harshal
Enter Qualification: BCA
Enter Department: IT
Enter Salary: 50000
--- Employee Details ---
Name          : Harshal
Qualification : BCA
Department    : IT
Salary        : 50000.0
```
