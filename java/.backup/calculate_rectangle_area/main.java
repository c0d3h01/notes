import java.util.Scanner;

class Main {
  public static void main(String[] args) {
    Scanner scanner = new Scanner(System.in);

    System.out.print("Enter length: ");
    double length = scanner.nextDouble();

    System.out.print("Enter width: ");
    double width = scanner.nextDouble();

    double area = length * width;
    System.out.println("Area of rectangle = " + area);

    scanner.close();
  }
}
