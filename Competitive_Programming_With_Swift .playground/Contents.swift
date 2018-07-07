// Competitive Programming With Swift

///=========Useful links Links================
/**
 * 1. https://swiftrocks.com/competitive-programming-with-swift.html
 * 2. https://www.geeksforgeeks.org/c-tricks-competitive-programming-c-11/ (Tips for Competitive Programming)
 * Online platforms for swift- https://www.coderbyte.com - I like this site. It provide solution also
 */

///=================================


//Tricks
/*
 * ContiguousArrays is fater than Array(http://jordansmith.io/on-performant-arrays-in-swift/)
 */
let deliciousArray = ContiguousArray<String>(arrayLiteral: "🌮", "🥞", "🥖")


/*
 * Fast Multiplication
 */
func fastMultiplyByTwo(number: Int) -> Int {
    return number << 1 // number << 2 (Multiply by 4) etc
}

/*
 * Fast Division
 */
func fastDivisionByTwo(number: Int) -> Int {
    return number >> 1 // number >> 2 (Divide by 4) etc
}
fastDivisionByTwo(number: 10)

/*
 * Check even and Odd number without module
 */
func isOddNumber(numb: Int) -> Bool {
    return ((numb & 1) == 1)
}

//print("is Odd number:\(isOddNumber(numb: 33))"

/*
 * Swapping of 2 numbers using XOR:
 */
func swapTwoNumbers(firstNumber: inout Int, secondNumber: inout Int) {
    // A quick way to swap a and b
    firstNumber ^= secondNumber;
    secondNumber ^= firstNumber;
    firstNumber ^= secondNumber;
}
/*var numberA = 10
var numberB = 3
swapTwoNumbers(firstNumber: &numberA, secondNumber: &numberB)
print("numberA:\(numberA) and numberB:\(numberB)")*/

/*
 * Swapping of 2 numbers using Common way
 */
func swapNumbers(firstNumber: inout Int, secondNumber: inout Int) {
    firstNumber += secondNumber;
    secondNumber = firstNumber - secondNumber;
    firstNumber = firstNumber - secondNumber;
}
/*var firstNumber = 5
var secondNumber = 7
swapNumbers(firstNumber: &firstNumber, secondNumber: &secondNumber)
print("firstNumber:\(firstNumber) and secondNumber:\(secondNumber)")*/

//Note Swift library have standard swap function e.g. swap(&numberA, &numberB)


