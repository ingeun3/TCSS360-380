//output from a script
console.log("hello");

//Variables
//let or const not var or nothing!
let aVariable = "string";
const aConstant = 10;
var oldVariable; //NO!
thisIsAVar = 10; //NO!

//Strings defined with either ' or ""
let msg = "hello";
console.log(msg);
msg = "`hello`";
console.log(msg);

//String Template Literals
let b = 10;
msg = `What was \` b again? ${b}`;
console.log(msg);
msg = `6 * 7 is ${6 * 7}`;
console.log(msg);

//Equivalence
b = 5;
console.log(b === "5");
console.log(b === 5);
console.log(b == "5");
console.log(b == 5);
console.log(b !== "5");
console.log(b !== 5);

//but
console.log(b * "5");

//Look for an empty string
let empty;

if (empty) {
  console.log("not empty");
} else {
  console.log("empty but how?");
}

if (1) {
  console.log("undefined");
} else {
  console.log("not empty");
}

empty = "";

//note '' === ""
if (empty === "") {
  //or use
  // if (empty.length === 0) {
  console.log("empty string");
} else {
  console.log("not empty");
}

//Functions

//old school function
function s1(x = 0) {
  const inner = (y) => y * y;
  function inner2(y) {
    return y * y;
  }

  return inner2(x);
}

//anonymous function -or- function literal
let s2 = function (x) {
  return x ** 2; //uses the raise to the power operator
};

//Arrow function -or- lambda syntax
const s3 = (x) => x ** x; //uses the raise to the power operator

//higher-order function
const ho = function (x, translate) {
  return translate(x);
};

console.log(ho(5, s1));

//list -array- processing
let arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
console.log(arr);

//filter and map
const arr2 = arr.filter((x) => x % 2 == 0).map(s3);
console.log(arr2);

//filter
const isOdd = (x) => x % 2 !== 0;
const allOdds = arr.filter(isOdd);

//map
const squared = (x) => x ** 2;
const squares = arr.map(squared);

//reduction #Fold from Erlang
const sum = arr.reduce((total, current) => total + current);
console.log(sum);

// ?:
// Ternary operator - Boolean Expression ? value when true : value when false
// Evaluates to a value!
// Try not to use the term if
const first = 5;
const second = 4;
const ternary = first < second ? first : second;

let max = arr.reduce(
  (max, current) => (max < current ? current : max),
  Number.MIN_SAFE_INTEGER
);
max = arr.reduce((max, current) => (max < current ? current : max), arr[0]);
console.log(max);

//Spread operator
let copyArray = [...arr];
console.log(arr);
console.log(copyArray);
copyArray[0] = 99;
console.log(arr);
console.log(copyArray);
copyArray = [-1, ...arr, 99, 100];

const charArr = [..."A string this is weird, huh?"];

//JS Objects -> Object literal
const anObj = {
  fName: "Charles",
  lName: "Bryan",
};

console.log(anObj.fName);
console.log(anObj["fName"]); //uses bracket notation
const keyId = "fName";
console.log(anObj[keyId]); //uses bracket notation

anObj.addr = 23233; //add a field
anObj.behavior = s1; //add a function
anObj.behavior(10);

let copyObj = { ...anObj };

// map, filter, and reduce with arrays of objects
const arrObj = [
  { name: "Charles", age: 45 },
  { name: "Charlie", age: 42 },
  { name: "Chas", age: 47 },
  { name: "Chuck", age: 39 },
  { name: "Trey", age: 52 },
];

let withIds = arrObj.map((current, index) => ({ ...current, id: index + 1 }));

const onlyCh = arrObj.filter((current) =>
  current.name.toLowerCase().startsWith("ch")
);

const maxAge = arrObj.reduce((max, current) =>
  max.age < current.age ? current : max
);

//example of closures in JS
const closure = (x) => {
  return (y) => x + y;
};

//Different foreach loops
for (const x of arr) {
  console.log(x);
}
//Use for iteration side-effects. Look to array.map for mapping
arr.forEach((x) => console.log(x));

//Use to iterate over key values in an object.
for (const key in anObj) {
  console.log(`${key}: ${anObj[key]}`);
}

for (let i = 0; i < arr.length; i++) {}

//Async and Promise Pattern
let hello = async (num) => {
  //ignore the specifics of the following line, it is just sleeping for 10 seconds
  await new Promise((r) => setTimeout(r, 10000));
  if (num % 2 != 0) {
    throw new Error("Oh no, its odd!");
  }
  return "Even";
};

hello(10)
  .then((result) => console.log(result))
  .catch((error) => console.error(error));

hello(10)
  .then((result) => console.log("In class " + result))
  .catch((error) => console.error(error));

let res;
hello(-10)
  .then((result) => (res = result))
  .catch((error) => (res = error));

//NO CODE HERE THAT RELIES ON RES!!!!!!!

console.log(`The result is ${res}`);
hello(10)
  .then((result) => (res = result))
  .catch((error) => (res = error));
console.log(`The result is ${res}`);
