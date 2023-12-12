let counter = 0;
let cnt = document.getElementById("countdis");
cnt.innerHTML = counter;

let inc = document.getElementById("inc");
let dec = document.getElementById("dec");

function Increment() {
  counter += 1;
  cnt.innerHTML = counter;
}

function Decrement() {
  counter -= 1;
  cnt.innerHTML = counter;
}

try {
  dec.addEventListener("click", Decrement);
  inc.addEventListener("click", Increment);
} catch (e) {
  console.log(e);
}
