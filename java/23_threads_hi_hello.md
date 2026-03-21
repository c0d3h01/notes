# Program 23

**Question:** Write a program to create and run following threads:

- HI
- Hello

## Program

```java
class ThreadHI extends Thread {
    public void run() {
        for (int i = 1; i <= 5; i++) {
            System.out.println("HI");
            try { Thread.sleep(500); } catch (InterruptedException e) {}
        }
    }
}

class ThreadHello extends Thread {
    public void run() {
        for (int i = 1; i <= 5; i++) {
            System.out.println("Hello");
            try { Thread.sleep(500); } catch (InterruptedException e) {}
        }
    }
}

public class MultiThreadDemo {
    public static void main(String[] args) {
        ThreadHI t1 = new ThreadHI();
        ThreadHello t2 = new ThreadHello();
        t1.start();
        t2.start();
    }
}
```

## Output

```
HI
Hello
HI
Hello
HI
Hello
HI
Hello
HI
Hello
```
