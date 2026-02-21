public class swapper {
	public static void main(String[] args) {
		int a, b, temp;
		System.out.println("Enter two number: ");
		Scanner n1 = new Scanner(System.in);
		Scanner n2 = new Scanner(System.in);

		a = n1.nextInt();
		b = n2.nextInt();

		System.out.println("Number before swapping are a = "+a+" b is "+b);

		temp = a;
		a = b;
		b = temp;
		System.out.println("Number after swapping are a = "+a+" b is "+b);
	}
}
