const titleize = function (names, cb) {
  const titleArr = names.map(name => {
    return `Mx. ${name} Jingleheimer Schmidt`;
  });

  cb(titleArr);
}

const printCallback = function (array) {
  array.forEach(el => {
    console.log(el);
  });
}

// titleize(["Mary", "Brian", "Leo"], printCallback);

function Elephant(name, height, tricks) {
  this.name = name;
  this.height = height;
  this.tricks = tricks;
}

Elephant.prototype.trumpet = function() {
  const sound = this.name + " the elephant goes 'phrRRRRRRRRRRR!!!!!!!";
  console.log(sound);
}

Elephant.prototype.grow = function() {
  this.height += 12
}

Elephant.prototype.addTrick = function(trick) {
  this.tricks.push(trick)
}
Elephant.prototype.play = function(){
  const trick = this.tricks[Math.floor(Math.random() * this.tricks.length)];
  console.log(`${this.name} is ${trick}`);
}

let ellie = new Elephant("Ellie", 185, ["giving human friends a ride", "playing hide and seek"]);
let charlie = new Elephant("Charlie", 200, ["painting pictures", "spraying water for a slip and slide"]);
let kate = new Elephant("Kate", 234, ["writing letters", "stealing peanuts"]);
let micah = new Elephant("Micah", 143, ["trotting", "playing tic tac toe", "doing elephant ballet"]);

let herd = [ellie, charlie, kate, micah];

Elephant.paradeHelper = function (elephant) {
  const trot = `${elephant.name} is trotting by!`
  console.log(trot)
}

function dinerBreakfast() {
  let order = ["cheesy scrampled eggs"]

  const fullOrder = function (food) {
    if (food) {
      order.push(food)
    }
    let myOrder = `I'd like ${order.join(', ')} please`
    console.log(myOrder)
  }

  return fullOrder;
}

