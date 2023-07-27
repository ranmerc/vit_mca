<html>
  <head>
    <style>
      main {
        background-color: #00008b;
        width: 30vw;
        border: 3rem solid #bdb76b;
      }

      h1 {
        color: #fff;
        text-align: center;
      }

      form {
        font-family: Arial, Helvetica, sans-serif;
        background-color: #d2691e;
        padding: 3rem 1rem;
        display: grid;
        row-gap: 2rem;
        margin: 0;
      }

      label {
        color: white;
        font-size: 2rem;
      }

      button {
        padding: 0 2rem;
      }
    </style>
  </head>
<body>
  <center>
    <main>
      <h1>FACTORIAL</h1>
      <form action="Factorial.php" method="post">
        <div>
          <label for="digit">Enter the Digit:</label><input type="text" id="digit" name="digit"><br>
        </div>
        <center>
          <button type="submit">SEND</button>
        </center>
      </form>
    </main>
  </center>
</body>
</html>