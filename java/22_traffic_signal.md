# Program 22

**Question:** Write a Java program to simulate traffic signal using multithreading.

## Program

```java
public class TrafficSignal extends Thread {
    String color;
    int duration;

    TrafficSignal(String color, int duration) {
        this.color = color;
        this.duration = duration;
    }

    public void run() {
        try {
            System.out.println(color + " - GO/STOP signal ON");
            Thread.sleep(duration);
            System.out.println(color + " - signal OFF");
        } catch (InterruptedException e) {
            System.out.println(e.getMessage());
        }
    }

    public static void main(String[] args) throws InterruptedException {
        TrafficSignal red    = new TrafficSignal("RED",    3000);
        TrafficSignal yellow = new TrafficSignal("YELLOW", 1000);
        TrafficSignal green  = new TrafficSignal("GREEN",  3000);

        red.start();
        red.join();
        yellow.start();
        yellow.join();
        green.start();
        green.join();
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
