# Program 13

**Question:** Write a Java program to create a class called employee with methods called work() and getsalary(). Create a subclass called HRManager that overrides the work() and adds new method called addEmp().

## Program

```java
public class Employee {
    String name;
    double salary;

    Employee(String name, double salary) {
        this.name = name;
        this.salary = salary;
    }

    void work() {
        System.out.println(name + " is working.");
    }

    double getSalary() {
        return salary;
    }
}

class HRManager extends Employee {
    HRManager(String name, double salary) {
        super(name, salary);
    }

    @Override
    void work() {
        System.out.println(name + " is managing HR operations.");
    }

    void addEmp(String empName) {
        System.out.println(empName + " has been added by " + name);
    }

    public static void main(String[] args) {
        Employee emp = new Employee("Raj", 30000);
        emp.work();
        System.out.println("Salary: " + emp.getSalary());

        HRManager hr = new HRManager("Priya", 60000);
        hr.work();
        System.out.println("Salary: " + hr.getSalary());
        hr.addEmp("Amit");
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
