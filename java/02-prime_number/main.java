import java.util.Scanner;

class prime_number {
  public static void main(String[] args) {
    int n;
		System.out.println("Enter a number");
		Scanner s = new Scanner(System.in);
		n = s.nextInt();
		boolean isPrime = n > 1;

		for (int i = 2; i*i <= n; i++) {
			if (n%i == 0) {
				isPrime = false;
				break;
			}
		}

		System.out.println(n+(isPrime? " is prime": "is not prime"));
  }
}
