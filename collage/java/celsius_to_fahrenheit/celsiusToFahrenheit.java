import java.util.Scanner;

public class CelsiusToFahrenheit {
  public static void main(String[] args) {
    double celsius, fahrenheit;
    Scanner input = new Scanner(System.in);

    System.out.print("Enter temp in celsius: ");
    celsius = input.nextDouble();

    fahrenheit = (celsius * 9/5) + 32;

    System.out.printf("%.2f Celsius is equal to %.2f Fahrenheit%n", celsius, fahrenheit);
  }
}
