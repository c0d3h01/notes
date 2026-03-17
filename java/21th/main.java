package harshal;

import java.util.Scanner;

public class program_21 {
	public static void main(String[] args) {
		Scanner s = new Scanner(System.in);
		try {
			System.out.print("Enter a number: ");
			String input = s.nextLine();

			int num = Integer.parseInt(input);
			if (num == 0) {
				throw new Exception("Number is zero");
			}

			int original = num;
			int reverse = 0;

			while (num != 0) {
				int digit = num % 10;
				reverse = reverse * 10 + digit;
				num = num / 10;
			}

			if (original == reverse) {
				System.out.println("Pallindrome number");
			}

			while (num != 0) {
				int digit = num % 10;
				reverse = reverse * 10;
				num = num / 10;
			}

			if (original == reverse) {
				System.out.println("Pallindrome number");
			} else {
				System.out.println("Not a palindrome");
			}
		} catch (NumberFormatException e) {
			System.out.println("Invalid input (Non-Numeric value)");
		} catch (Exception e) {
			System.out.println(e.getMessage());
		} finally {
			System.out.print("Program executed");
		}
	}
}
