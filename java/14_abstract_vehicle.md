# Program 14

**Question:** Write a Java program to create an abstract class Vehicle with abstract methods startEngine() and stopEngine(). Create subclasses Car and Motorcycle that extend the Vehicle class and implement the respective methods to start and stop the engines for each vehicle type.

## Program

```java
package harshal;

abstract class Vehicle {
	abstract void startEngine();
	abstract void stopEngine();
}

class Car extends Vehicle {
	void startEngine() {
		System.out.println("Car engine starts with key ingition");
	}

	void stopEngine() {
		System.out.println("Car engine stop when key is turned off!");
	}
}

class MotorCycle extends Vehicle {
	void startEngine() {
		System.out.println("MotorCycle engine starts with self or kick");
	}

	void stopEngine() {
		System.out.println("MotorCycle engine stops using kil switch");
	}
}

public class program_14 {

	public static void main(String[] args) {
		Vehicle v1 = new Car();
		Vehicle v2 = new MotorCycle();

		v1.startEngine();
		v1.stopEngine();

		v2.startEngine();
		v2.stopEngine();
	}

}
```

## Output

```
Car engine started.
Car engine stopped.
Motorcycle engine started.
Motorcycle engine stopped.
```
