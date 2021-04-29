namespace ConsoleApp1
{
    class Program {
      static long hanoi(int n, int from, int mid, int to) {
        if(n == 1) {
          return 1;
        }
        return hanoi(n-1, from, to, mid) + 1 + hanoi(n-1, mid, from, to);
      }

      static void Main(string[] args) {
        System.Console.WriteLine(hanoi(32, 1, 2, 3));
      }
    }
}

