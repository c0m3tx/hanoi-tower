<?php
  $count = 0;

  function hanoi($n, $from, $mid, $to) {
    global $count;
    if ($n == 1) {
      $count++;
    } else {
      hanoi($n - 1, $from, $to, $mid);
      $count++;
      hanoi($n - 1, $mid, $from, $to);
    }
  }

  function executeHanoi($n) {
    global $count;
    echo "Starting...\n";
    hanoi($n,'A','B','C');
    echo "$count iterations\n";
  }

  executeHanoi(32);

?>
