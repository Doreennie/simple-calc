//  Doreen Nguyen
//  Fall 2017
//  INFO 449 - iOS SimpleCalc
//  main.swift

//  This program models a Simple Calculator
//  Computes basic +, -, *, / and % operators given
//  3 lines of console input hitting return after each
//  Calculates average, a count of numbers, and factorials
//  Given a series of numbers and a keyword

import Foundation
print("Enter an expression separated by returns:")

// Initialize users first response
let response1 = readLine(strippingNewline: true)!.trimmingCharacters(in: .whitespacesAndNewlines)
var arr = response1.split(separator: " ")

// Checks if user is adding, subtracting, multiplying and dividing
if (arr.count == 1) {
    let operType = readLine(strippingNewline: true)!.trimmingCharacters(in: .whitespacesAndNewlines)
    let response2 = readLine(strippingNewline: true)!.trimmingCharacters(in: .whitespacesAndNewlines)
    // Checks if numbers are doubles to print results accordingly
    if (response1.characters.contains(".") || response2.characters.contains(".")) {
        let num1 = Double.init(response1)!
        let num2 = Double.init(response2)!
        if (operType == "+") {
            print("Result: \(num1+num2)")
        } else if (operType == "-") {
            print("Result: \(num1-num2)")
        } else if (operType == "*") {
            print("Result: \(num1*num2)")
        } else if (operType == "/") {
            print("Result: \(num1/num2)")
        } else if (operType == "%"){
            print("Result: \(num1.truncatingRemainder(dividingBy: num2))")
        }
    // Checks if numbers are ints to print results accordingly
    } else {
        let num1 = Int.init(response1)!
        let num2 = Int.init(response2)!
        if (operType == "+") {
            print("Result: \(num1+num2)")
        } else if (operType == "-") {
            print("Result: \(num1-num2)")
        } else if (operType == "*") {
            print("Result: \(num1*num2)")
        } else if (operType == "/") {
            print("Result: \(num1/num2)")
        } else if (operType == "%"){
            print("Result: \(num1%num2)")
        }
    }
// Displays factorial if user eneters a number last string was fact
} else if (arr.count == 2) {
    let last = arr.removeLast();
    if (last == "fact") {
        var result: Int = 1;
        let number = Int (arr[0])!
        for j in 1..<number + 1 {
            result = result * j
        }
        print(result)
    // Checks if there is only 1 number to average
    } else if (last == "avg") {
        print(Int.init(arr[0])!)
    }
// Displays either count of numbers or average
} else if (arr.count > 1) {
    let last = arr.removeLast()
    // Checks if user inputs count
    if (last == "count") {
        print(arr.count)
    // Checks if user inputs avg
    } else if (last == "avg") {
        var sum: Int = 0;
        for i in 0...arr.count - 1 {
            let number =  Int.init(arr[i])!;
            sum += number;
        }
        print(sum/(arr.count))
    }
}












