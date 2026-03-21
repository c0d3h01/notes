# Program 16

**Question:** Write a Java program Create abstract class shape. Drive three classes sphere, Cone and cylinder from it. Calculate Area and volume of all (use method overriding).

## Program

```java
abstract class Shape {
    abstract double getArea();
    abstract double getVolume();
}

class Sphere extends Shape {
    double radius;

    Sphere(double radius) {
        this.radius = radius;
    }

    public double getArea() {
        return 4 * Math.PI * radius * radius;
    }

    public double getVolume() {
        return (4.0 / 3) * Math.PI * radius * radius * radius;
    }
}

class Cone extends Shape {
    double radius, height;

    Cone(double radius, double height) {
        this.radius = radius;
        this.height = height;
    }

    public double getArea() {
        double slant = Math.sqrt(radius * radius + height * height);
        return Math.PI * radius * (radius + slant);
    }

    public double getVolume() {
        return (1.0 / 3) * Math.PI * radius * radius * height;
    }
}

class Cylinder extends Shape {
    double radius, height;

    Cylinder(double radius, double height) {
        this.radius = radius;
        this.height = height;
    }

    public double getArea() {
        return 2 * Math.PI * radius * (radius + height);
    }

    public double getVolume() {
        return Math.PI * radius * radius * height;
    }

    public static void main(String[] args) {
        Shape sphere   = new Sphere(5);
        Shape cone     = new Cone(3, 7);
        Shape cylinder = new Cylinder(4, 10);

        System.out.printf("Sphere   - Area: %.2f, Volume: %.2f%n", sphere.getArea(),   sphere.getVolume());
        System.out.printf("Cone     - Area: %.2f, Volume: %.2f%n", cone.getArea(),     cone.getVolume());
        System.out.printf("Cylinder - Area: %.2f, Volume: %.2f%n", cylinder.getArea(), cylinder.getVolume());
    }
}
```

## Output

```
Sphere   - Area: 314.16, Volume: 523.60
Cone     - Area: 103.10, Volume: 65.97
Cylinder - Area: 351.86, Volume: 502.65
```
