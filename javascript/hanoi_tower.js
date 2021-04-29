hanoi = function(n, from, mid, to) {
  if(n == 1) {
    return 1;
  } else {
    return hanoi(n-1, from, to, mid) + 1 + hanoi(n-1, mid, from, to);
  }
};

var iterations = hanoi(32, 'A','B','C');
console.log(iterations + " moves");
