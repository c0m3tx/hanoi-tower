#include <stdio.h>

unsigned long long int hanoi(unsigned int n, char from, char mid, char to) {
  if(n == 1) {
	 return 1;
  }
  return hanoi(n-1, from, to, mid) + 1 + hanoi(n-1, mid, from, to);
}

unsigned long long int executeHanoi(int n) {
  return hanoi(n, 'a', 'b', 'c');
}

int main() {
  unsigned long long prints = executeHanoi(32);
  printf("%llu moves\n", prints);
}
