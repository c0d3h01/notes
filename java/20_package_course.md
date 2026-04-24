# Program 20

**Question:** Create a package 'course' Add classes BCA MCA in it. Add information of students in both the classes and print. Create a class DemoCourse import the package course and use the classes in it.

## Program

```java
// File: course/BCA.java
package course;

public class bca {
    String name;
    int roll;

    public bca(String name, int roll) {
        this.name = name;
        this.roll = roll;
    }

    public void display() {
        System.out.println("BCA Student Details:");
        System.out.println("Name: " + name);
        System.out.println("Roll No: " + roll);
    }
}
```

```java
// File: course/MCA.java
package course;

public class mca {
    String name;
    int roll;

    public mca(String name, int roll) {
        this.name = name;
        this.roll = roll;
    }

    public void display() {
        System.out.println("MCA Student Details:");
        System.out.println("Name: " + name);
        System.out.println("Roll No: " + roll);
    }
}
```

```java
// File: DemoCourse.java
package SimpleExamples;

import course.bca;

public class DemoCourse {
    public static void main(String[] args) {

        bca b1 = new bca("ABC", 101);
        b1.display();

        System.out.println();

        course.mca m1 = new course.mca("XYZ", 201);
        m1.display();
    }
}
```

## Output

```
--- Course Information ---
BCA Students: Harshal, Raj, Priya
MCA Students: Amit, Sneha, Rohit
```
