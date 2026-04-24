# Program 16

**Question:** Write a Java program Create abstract class shape. Drive three classes sphere, Cone and cylinder from it. Calculate Area and volume of all (use method overriding).

## Program

```java
package harshal;

abstract class Shape {
    double r, h;

    abstract void Area();
    abstract void Volume();
}

class Sphere extends Shape {
    Sphere(double r) {
        this.r = r;
    }

    void Area() {
        double area = 4 * 3.14 * r * r;
        System.out.printf("Surface Area of Sphere : %.2f\n", area);
    }

    void Volume() {
        double volume = (4.0 / 3) * 3.14 * r * r * r;
        System.out.printf("Volume of Sphere : %.2f\n", volume);
    }
}

class Cylinder extends Shape {
    Cylinder(double r, double h) {
        this.r = r;
        this.h = h;
    }

    void Area() {
        double area = 2 * 3.14 * r * (r + h);
        System.out.printf("Surface Area of Cylinder : %.2f\n", area);
    }

    void Volume() {
        double volume = 3.14 * r * r * h;
        System.out.printf("Volume of Cylinder : %.2f\n", volume);
    }
}

public class program_16 {
    public static void main(String[] args) {
        Shape s;

        s = new Sphere(3);
        s.Area();
        s.Volume();

        System.out.println();

        s = new Cylinder(3, 5);
        s.Area();
        s.Volume();
    }
}
```

## Output

```
Sphere   - Area: 314.16, Volume: 523.60
Cone     - Area: 103.10, Volume: 65.97
Cylinder - Area: 351.86, Volume: 502.65
```
