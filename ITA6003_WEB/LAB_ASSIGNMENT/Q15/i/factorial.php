<?php
  function fact($n)
  {
      if($n == 0)
          return 1;
      else 
          return $n * fact($n - 1);
  }

  if (isset($_POST['digit'])) {
      $num = $_POST['digit'];
      $fact = fact($num);
      echo "<center><main>";
      echo "<h1>FACTORIAL</h1>";
      echo "<hr style='border: 1px dotted black; border-style: none none dotted; color: #fff; background-color: #fff;' />";
      echo "<div> Given Digit = $num </div>";
      echo "<div> Factorial = $fact </div>";
      echo "</main></center>";
  }
?>

<style>
  h1 {
    font-family: Arial, Helvetica, sans-serif;
    color: red;
  }

  div {
    font-family: Arial, Helvetica, sans-serif; 
    font-size: 2rem;
  }

  div:nth-of-type(2) {
    margin-top: 1rem;
    color: green;
  }

  main {
    border: 5px double black;
    width: fit-content;
  }
</style>