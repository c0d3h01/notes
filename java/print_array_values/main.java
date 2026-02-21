class Main {
  public static void main(String[] args) {
    int[] numbers = {1, 2, 3, 4, 5, 6};

    System.out.print("Array values: ");
    for (int index = 0; index < numbers.length; index++) {
      System.out.print(numbers[index]);
      if (index < numbers.length - 1) {
        System.out.print(", ");
      }
    }
    System.out.println();
  }
}
