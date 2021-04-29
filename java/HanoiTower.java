class HanoiTower {

  public static void main(String[] args) {
    long prints = hanoi(32, 'A', 'B', 'C');
    System.out.println(prints + " moves");
  }

  private static long hanoi(int n, char from, char mid, char to) {
    if(n == 1) return 1;
    return hanoi(n-1, from, to, mid) + 1 + hanoi(n-1, mid, from, to);
  }

}
