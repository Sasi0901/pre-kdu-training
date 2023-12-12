function operation(op) {
  let num1 = parseFloat(document.getElementById("one").value);
  let num2 = parseFloat(document.getElementById("two").value);
  let ans = 0;
  switch (op) {
    case 1:
      ans = num1 + num2;
      alert("Answer: " + ans);
      break;
    case 2:
      ans = num1 - num2;
      alert("Answer: " + ans);
      break;
    case 3:
      ans = num1 * num2;
      alert("Answer: " + ans);
      break;
    case 4:
      ans = num1 / num2;
      alert("Answer: " + ans);
      break;
  }
}

let btna = document.getElementById("add");
let btns = document.getElementById("sub");
let btnm = document.getElementById("mul");
let btnd = document.getElementById("div");

btna.addEventListener("click", function () {
  operation(1);
});
btns.addEventListener("click", function () {
  operation(2);
});
btnm.addEventListener("click", function () {
  operation(3);
});
btnd.addEventListener("click", function () {
  operation(4);
});
