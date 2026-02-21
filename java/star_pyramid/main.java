class Main {
  static void printStarPyramid(int rows) {
    for (int row = 1; row <= rows; row++) {
      for (int col = 1; col <= row; col++) {
        System.out.print("* ");
      }
      System.out.println();
    }
  }

  public static void main(String[] args) {
    int rows = 3;
    printStarPyramid(rows);
  }
}
