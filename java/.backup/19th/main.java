package harshal;
import java.util.Scanner;

public class program_19 {

	public static void main(String[] args) {
		Scanner s = new Scanner(System.in);
		System.out.print("Enter any string :");

		String str = s.nextLine();
		System.out.print("Alternative characters are: ");

		for (int i = 0; i < str.length(); i += 2) {
			System.out.print(str.charAt(i));
		}
	}

}
