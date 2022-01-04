//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

//: [Next](@next)

// Array Declaration
var firstName : Array<String> = ["Daniel", "Mark", "Sam", "Pierre", "Jean"]
var lastName : Array<String> = ["Carvalho", "Zukemberg", "Smith", "Olivier",
"Francois"]
let height : Array<Int> = [174, 178, 166, 182, 177] // in centimeters
let weight : Array<Double> = [82.5, 78.2, 120.0, 71.2, 92.9] // in kg


print("----------------REPORT-----------------")
print("\n")

for (index, fName) in firstName.enumerated()
{
    print("Patient Number #\(index+1) : \(fName) \(lastName[index])")
    print("- Height : \(height[index])")
    print("- Weight : \(height[index])")
    
    let heightInDouble = Double(height[index])
    let bmi = (weight[index]/pow(heightInDouble,2)*10000)
    
    print("- BMI : \(bmi)")
    if bmi < 18.5{
        print("- Classification : Underweight")
    }
    else if (18.5 <= bmi && bmi <= 24.9){
        print("- Classification : Normal weight")
    }
    else if (25.0 <= bmi && bmi <= 29.9){
        print("- Classification : Overweight")
    }
    else if (30.0 <= bmi && bmi <= 100.0){
        print("- Classification : Normal weight")
    }
    print("\n")
}

print("---------------------------------------")


