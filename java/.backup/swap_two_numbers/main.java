import java.util.Scanner;

class Main {
  public static void main(String[] args) {
    Scanner scanner = new Scanner(System.in);

    System.out.print("Enter first number: ");
    int firstNumber = scanner.nextInt();

    System.out.print("Enter second number: ");
    int secondNumber = scanner.nextInt();

    System.out.println("Before swap: firstNumber = " + firstNumber + ", secondNumber = " + secondNumber);

    int temp = firstNumber;
    firstNumber = secondNumber;
    secondNumber = temp;

    System.out.println("After swap: firstNumber = " + firstNumber + ", secondNumber = " + secondNumber);
    scanner.close();
  }
}
