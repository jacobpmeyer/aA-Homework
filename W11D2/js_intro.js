function mysteryScoping1() {
  var x = 'out of block';
  if (true) {
    var x = 'in block';
    console.log(x);
  }
  console.log(x);
}

function mysteryScoping2() {
  const x = 'out of block';
  if (true) {
    const x = 'in block';
    console.log(x);
  }
  console.log(x);
}

function mysteryScoping3() {
  const x = 'out of block';
  if (true) {
    var x = 'in block';
    console.log(x);
  }
  console.log(x);
}

function mysteryScoping4() {
  let x = 'out of block';
  if (true) {
    let x = 'in block';
    console.log(x);
  }
  console.log(x);
}

function mysteryScoping5() {
  let x = 'out of block';
  if (true) { 
    let x = 'in block';
    console.log(x);
  }
  let x = 'out of block again';
  console.log(x);
}


function madLib(verb, adjective, noun) {
  let vup = verb.toUpperCase();
  let aup = adjective.toUpperCase();
  let nup = noun.toUpperCase();
  let message = `We shall ${vup} the ${aup} ${nup}`;
  return message;
}

function isSubstring(searchString, subString) {
  return searchString.includes(subString);
}

function fizzBuzz(arr) {
  let new_arr = [];
  for (let i = 0; i < arr.length; i++) {
    let j = arr[i]
    if ((j % 3 === 0 || j % 5 === 0) && !(j % 3 === 0 && j % 5 === 0)) {
      new_arr.push(j);
    }
  }
  return new_arr;
}

function isPrime(num) {
  if (num < 2) {
    return false;
  }

  for (let i = 2; i < num; i++) {
    if (num % i === 0) {
      return false;
    }
  }

  return true;
}

function firstNPrimes(num) {
  let arr = [];
  for (let i = 0; arr.length < num; i++) {
    if (isPrime(i)) {
      arr.push(i);
    }
  }
  return arr;
}

function sumOfNPrimes(n) {
  let sum = 0;
  let arr = firstNPrimes(n);
  for ( let i = 0; i < arr.length; i++ ) {
    sum += arr[i]
  }
  return sum
}