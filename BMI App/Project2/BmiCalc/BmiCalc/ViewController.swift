//
//  ViewController.swift
//  BmiCalc
//
//  Created by english on 2021-09-14.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBAction func txtHeightChanged(_ sender: Any) {
        lblResult.isHidden = true
    }
    
    
    @IBAction func txtWeightChanged(_ sender: Any) {
        lblResult.isHidden = true
    }
    
    @IBOutlet weak var lblResult: UILabel!
    
    @IBOutlet weak var txtHeight: UITextField!
    @IBOutlet weak var txtWeight: UITextField!
    
    @IBAction func btnCalc(_ sender: Any) {
        
        if let txtHeightStr : String = txtHeight.text{
            
            if let txtWeightStr : String = txtWeight.text{
                
                if let txtHeightFloat : Float = Float(txtHeightStr){
                    
                    if let txtWeightFloat : Float = Float(txtWeightStr){
                        
                        let BMI : Float = Float((txtWeightFloat/pow(txtHeightFloat, 2))*10000)
                        
                        switch BMI {
                        case 0..<18.5:
                            lblResult.text = "BMI Classification = Underweight"
                            break
                            
                        case 18.5..<24.9:
                            lblResult.text = "BMI Classification = Normal"
                            break
                            
                        case 25..<29.9:
                            lblResult.text = "BMI Classification = Overweight"
                            break
                            
                        case 30..<100:
                            lblResult.text = "BMI Classification = Obese"
                            break
                            
                        default:
                            lblResult.text = "Input is not Valid !!"
                        }
                        lblResult.isHidden = true
                    }
                    else{
                        Toast.ok(view: self, title: "Information", message: "Invalid Value !!", handler: nil)
                    }
                }else{
                    Toast.ok(view: self, title: "Information", message: "Invalid Value !!", handler: nil)
                }
            }else{
                Toast.ok(view: self, title: "Information", message: "Invalid Value !!", handler: nil)
                
                
            }
            
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        lblResult.isHidden = true
        
    }
    
}
