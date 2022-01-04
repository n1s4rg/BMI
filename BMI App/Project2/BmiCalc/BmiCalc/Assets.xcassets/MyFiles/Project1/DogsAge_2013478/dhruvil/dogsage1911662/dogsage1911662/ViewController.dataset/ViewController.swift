//
//  ViewController.swift
//  dogsage1911662
//
//  Created by english on 2021-09-09.
//

import UIKit

class ViewController: UIViewController {

   
    @IBOutlet weak var txtAge: UITextField!
    
    
    
    @IBOutlet weak var lblResult: UILabel!
    
    @IBAction func btncheckout(_ sender: Any) {
        
        
    }
   
    
    
    
    
    @IBAction func btnCheckout(_ sender: Any) {
        
        Toast.ok(view: self, title: "Information", message: "YOU CLICKED THE Button!",handler: nil)
        
        
        
        
        
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

