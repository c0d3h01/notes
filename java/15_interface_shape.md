# Program 15

**Question:** Write a Java program to create an interface Shape with the getArea() method. Create three classes Rectangle, Circle, and Triangle that implement the Shape interface. Implement the getArea() method for each of the three classes.

## Program

```java
interface Shape {
    double getArea();
}

class Rectangle implements Shape {
    double length, width;

    Rectangle(double length, double width) {
        this.length = length;
        this.width = width;
    }

    public double getArea() {
        return length * width;
    }
}

class Circle implements Shape {
    double radius;

    Circle(double radius) {
        this.radius = radius;
    }

    public double getArea() {
        return Math.PI * radius * radius;
    }
}

class Triangle implements Shape {
    double base, height;

    Triangle(double base, double height) {
        this.base = base;
        this.height = height;
    }

    public double getArea() {
        return 0.5 * base * height;
    }

    public static void main(String[] args) {
        Shape rect     = new Rectangle(5, 3);
        Shape circle   = new Circle(7);
        Shape triangle = new Triangle(6, 4);

        System.out.printf("Rectangle Area : %.2f%n", rect.getArea());
        System.out.printf("Circle Area    : %.2f%n", circle.getArea());
        System.out.printf("Triangle Area  : %.2f%n", triangle.getArea());
    }
}
```

## Output

```
Rectangle Area : 15.00
Circle Area    : 153.94
Triangle Area  : 12.00
```
