# Program 22

**Question:** Write a Java program to simulate traffic signal using multithreading.

## Program

```java
package harshal;

class TrafficSignal extends Thread {
	private String color;
	private int time;

	public TrafficSignal (String color , int time) {
		this.color = color;
		this.time = time;
	}
	public void run() {
		try {
			System.out.println(color + "Light ON");
			Thread.sleep(time);
			System.out.println(color + "Light OFF\n");

		}
		catch (InterruptedException e) {
			System.out.println(e);
		}
	}
}
public class program_22 {

public static void main(String[] args) {
		while (true) {
			try {
				TrafficSignal red = new TrafficSignal("RED" , 3000);
				red.start();
				red.join();

				TrafficSignal green = new TrafficSignal("GREEN" , 3000);
				green.start();
				green.join();

				TrafficSignal yellow = new TrafficSignal("YELLOw" , 1500);
				yellow.start();
				yellow.join();
			}
			catch (InterruptedException e) {
				System.out.println();
			}
		}
}

}
```

## Output

```
RED - GO/STOP signal ON
RED - signal OFF
YELLOW - GO/STOP signal ON
YELLOW - signal OFF
GREEN - GO/STOP signal ON
GREEN - signal OFF
```
