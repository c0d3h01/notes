# Program 20

**Question:** Create a package 'course' Add classes BCA MCA in it. Add information of students in both the classes and print. Create a class DemoCourse import the package course and use the classes in it.

## Program

```java
// File: course/BCA.java
package course;

public class BCA {
    public void display() {
        System.out.println("BCA Students: Harshal, Raj, Priya");
    }
}
```

```java
// File: course/MCA.java
package course;

public class MCA {
    public void display() {
        System.out.println("MCA Students: Amit, Sneha, Rohit");
    }
}
```

```java
// File: DemoCourse.java
import course.BCA;
import course.MCA;

public class DemoCourse {
    public static void main(String[] args) {
        BCA bca = new BCA();
        MCA mca = new MCA();

        System.out.println("--- Course Information ---");
        bca.display();
        mca.display();
    }
}
```

## Output

```
--- Course Information ---
BCA Students: Harshal, Raj, Priya
MCA Students: Amit, Sneha, Rohit
```
