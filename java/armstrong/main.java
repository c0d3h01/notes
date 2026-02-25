package practicl01;
import java.util.Scanner;

public class armstrong_num {

	public static void main(String[] args) {
		int originalNum, remainder, result = 0;
		System.out.print("Enter a number :");
		Scanner s = new Scanner(System.in);
		int num = s.nextInt();
		originalNum = num;

		while (originalNum != 0) {
			remainder = originalNum % 10;
			result += Math.pow(remainder, 3);
			originalNum /= 10;
		}

		if (result == num) {
			System.out.println("is not Armstrong num : " + num);
		} else {
			System.out.println("is a Armstrong num : " + num);
		}
	}

}
