# Program 24

**Question:** Write a program to create and run following threads:

- 1-50 Even Nos
- 1-50 Odd Nos

## Program

```java
class EvenThread extends Thread {
    public void run() {
        System.out.println("Even numbers (1-50):");
        for (int i = 2; i <= 50; i += 2) {
            System.out.print(i + " ");
        }
        System.out.println();
    }
}

class OddThread extends Thread {
    public void run() {
        System.out.println("Odd numbers (1-50):");
        for (int i = 1; i <= 50; i += 2) {
            System.out.print(i + " ");
        }
        System.out.println();
    }
}

public class EvenOddThreads {
    public static void main(String[] args) {
        EvenThread even = new EvenThread();
        OddThread odd   = new OddThread();
        even.start();
        odd.start();
    }
}
```

## Output

```
Even numbers (1-50):
2 4 6 8 10 12 14 16 18 20 22 24 26 28 30 32 34 36 38 40 42 44 46 48 50 
Odd numbers (1-50):
1 3 5 7 9 11 13 15 17 19 21 23 25 27 29 31 33 35 37 39 41 43 45 47 49 
```
