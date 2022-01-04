import Foundation
let firstName : Array<String> = ["Daniel", "Mark", "Sam", "Pierre", "Jean"]
let lastName : Array<String> = ["Carvalho", "Zukemberg", "Smith", "Olivier", "Francois"]
let height : Array<Int> = [174, 178, 166, 182, 177] // in centimeters
let weight : Array<Double> = [82.5, 78.2, 120.0, 71.2, 92.9] // in kg
/*
Array index |0 |1 |2 |3 |4
--------------------------------------------------------------------
firstName |Daniel |Mark |Sam |Pierre |Jean
lastName |Carvalho |Zukemberg |Smith |Olivier |Francois
height (cm/Int) |174 |178 |166 |182 |177
weight (Dbl/Kg) |82.5 |78.2 |120.0 |71.2 |92.9
---------------------------------------------------------------------
*/
let classificationDescription : Array<String> = ["Underweight", "Normal weight", "Overweight", "Obesity",
"BMI out of range (check data)"]
let classificationRange : Array<Range<Double>> = [0..<18.5, 18.5..<25.0, 25.0..<30.0, 30.0..<100.1,
100.1..<Double.greatestFiniteMagnitude]
/*
Array index |0 |1 |2 |3
---------------------------------------------------------------------
class..Descrip |Underweight |Normal |Overweight |Obesity
class..Range |0..<18.5 |18.5..<25.0 |25.0..<30.0 |30.0..<100.1
*/
for i in 0..<firstName.count {
    
    print("Patient number \(i+1) : \(firstName[i]) \(lastName[i])\n - Height : \(height[i]) cm \n - Weight : \(weight[i]) kg")
    
 let heightInMeters = Double(height[i])/100
 var bmi = weight[i] / (heightInMeters * heightInMeters)
 // let bmi2 = weight[i] / pow(heightInMeters, 2)

 bmi = round(bmi * 10) / 10
 print(" - BMI : \(String(format: "%.1f", bmi))")
 for c in 0..<classificationRange.count {
 if (classificationRange[c].contains(bmi)) {
 print(" - Classification : \(classificationDescription[c])")
 break
 }
 }

}
