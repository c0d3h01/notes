import java.util.Scanner;

public class calcAreaRectangle {
  public static void main(String[] args) {
    Scanner input = new Scanner(System.in);
    float length, width, area;

    System.out.print("Enter length: ");
    length = input.nextFloat();

    System.out.print("Enter width: ");
    width = input.nextFloat();

    area = length * width;

    System.out.printf("Area of rectaangle is "+ area);
  }
}
