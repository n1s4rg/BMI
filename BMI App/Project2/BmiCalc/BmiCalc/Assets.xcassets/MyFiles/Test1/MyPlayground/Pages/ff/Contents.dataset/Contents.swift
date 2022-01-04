//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

//: [Next](@next)
var province = "QC"
var age = 18
if (age >= 18) {
 if (province != "QC" && province != "AB" && province != "MB") && (age < 19){
 print("You are NOT allowed to buy alcohol in \(province)!")
 } else {
 print("You are allowed to buy alcohol in \(province)!")
 }
} else {
 print("You are NOT allowed to buy alcohol in \(province)!")
}


let frenchLevel = 11
switch frenchLevel {
case 0:
 print("Beginner")
case 1:
 print("Intermediate")
case 2...8: // Closed range
 print("Advanced")
 break // use of break is optional
case 9, 10:
 print("Professional")
default:
 print("Unknow level \(frenchLevel)!")
}


