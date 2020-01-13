function multiplesOf3and5(number) {
  // Good luck!
  let total = 0
  for (let i = 1; i < number; i++) { 
    if (i % 3 == 0 || i % 5 == 0) {
      total += i
    }
  }
  return total
}

console.log("Project Euler: Problem 1: Multiples of 3 and 5")
console.log("***********************************************")
console.log(`${multiplesOf3and5(1000) == 233168} multiplesOf3and5(1000) = ${multiplesOf3and5(1000)}`);
console.log(`${multiplesOf3and5(49) == 543} multiplesOf3and5(49) = ${multiplesOf3and5(49)}`);
console.log(`${multiplesOf3and5(19564) == 89301183} multiplesOf3and5(19564) = ${multiplesOf3and5(19564)}`);
console.log(`${multiplesOf3and5(8456) == 16687353} multiplesOf3and5(8456) = ${multiplesOf3and5(8456)}`);
