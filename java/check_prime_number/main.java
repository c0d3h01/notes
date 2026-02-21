import java.util.Scanner;

class Main {
  public static void main(String[] args) {
    Scanner scanner = new Scanner(System.in);

    System.out.print("Enter a number: ");
    int number = scanner.nextInt();

    boolean isPrime = number > 1;
    for (int divisor = 2; divisor * divisor <= number; divisor++) {
      if (number % divisor == 0) {
        isPrime = false;
        break;
      }
    }

    System.out.println(number + (isPrime ? " is prime" : " is not prime"));
    scanner.close();
  }
}
