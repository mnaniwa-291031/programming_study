/* Project Euler No.0001 by JavaScript */

let sum_multiples_3or5 = n =>
    [...Array(n).keys()].filter(x => (x % 3 === 0) || (x % 5 === 0)).reduce((x, y) => x + y, 0)

console.log(sum_multiples_3or5(10))
console.log(sum_multiples_3or5(1000))

