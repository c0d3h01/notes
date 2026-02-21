import java.util.Scanner;

public class cubeOfNumber {
  public static void main(String[] args) {
    Scanner input = new Scanner(System.in);
    int num, cube;

    System.out.print("Enter a num: ");
    num = input.nextInt();

    cube = num * num * num;

    System.out.println("The cube is " + cube);
  }
}
