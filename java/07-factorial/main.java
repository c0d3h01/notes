package practicl01;

import java.util.Scanner;

public class factorial_program {
  
	public static int calc(int n){
		int ans = 1;
		for (int i = 2; i <= n; i++) {
			ans = ans * i;
		}
		return ans;
	}

	public static void main(String[] args) {
		System.out.print("Enter a number :");
		Scanner s = new Scanner(System.in);
		int num = s.nextInt();
		System.out.println(calc(num));
	}
}
