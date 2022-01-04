//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

//: [Next](@next)
var abcd = "a"..."d"

print(abcd.contains("c"))

var sequence = 1...100
print(sequence.contains(99))

// Range and Closing Range operators
print("Looping from 0 to 10 with CLOSING RANGE operator (...)")
for number in 0...10{
 print(number)
}
// example of how powerful range can be.
var abc = "a"..."d"
var xyz = "x"..."z"
var numbers = 0...10
print(xyz.contains("y"))
print(numbers.contains(11))


print("Looping array by position")
var names = ["Daniel", "Wilson", "Mark", "Sophie"]

for index in 0..<names.count {
 print("The name #\(index+1) is \(names[index])")
}

print("Looping array by element (foreach in C#)")
for name in names {
 print(name)
}

print("Looping enumerated array for position and element")
for (index, name) in names.enumerated() {
 print("The name #\(index+1) is \(name)")
}




var i = 0;
repeat{
    print(i ,",", terminator:"")
 i += 1
} while i < 10;

