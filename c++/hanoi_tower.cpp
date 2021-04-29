#include <iostream>
using namespace std;

unsigned long long int hanoi(unsigned int n, char from, char mid, char to) {
  if(n == 1) return 1;
  return hanoi(n-1, from, to, mid) + 1 + hanoi(n-1, mid, from, to);
}

unsigned long long int executeHanoi(int n) {
  return hanoi(n, 'A', 'B', 'C');
}

int main() {
  cout << "Starting..." << endl;
  unsigned long long int prints = executeHanoi(32);
  cout << prints << " moves" << endl;
}
