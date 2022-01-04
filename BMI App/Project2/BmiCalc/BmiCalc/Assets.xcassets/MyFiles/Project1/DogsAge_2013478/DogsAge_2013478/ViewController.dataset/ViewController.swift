//
//  ViewController.swift
//  DogsAge_2013478
//
//  Created by english on 2021-09-07.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtAge: UITextField!
    
    
    @IBOutlet weak var lblResult: UILabel!
    
    @IBAction func btnCheckItOut(_ sender: Any) {
        //print("Button_Clicked")
        //Toast.ok(view: self, title: "Information", message: "Button_Clicked !", handler: nil)
        if let txtAgeString : String = txtAge.text{
            if let myDogAge : Int =
                Int(txtAgeString){
                
                if(myDogAge <= 0 || myDogAge > 20){
                    Toast.ok(view: self, title: "Information", message: "enter age between 1-20", handler: nil)
                }
                
                var dogsAgeInHumanAge = myDogAge * 7
                
                lblResult.text = "if your \(txtAgeString) years old dog were a human he/she would have \(String(dogsAgeInHumanAge)) years old "
            }
            else{
                Toast.ok(view: self, title: "Information", message: "\(txtAgeString) age is not valid !", handler: nil)
            }
        }
        else{
            Toast
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        lblResult.isHidden = true
        
    }
}
