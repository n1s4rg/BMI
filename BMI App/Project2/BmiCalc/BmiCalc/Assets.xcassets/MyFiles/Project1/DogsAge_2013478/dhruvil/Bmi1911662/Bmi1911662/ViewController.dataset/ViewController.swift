//
//  ViewController.swift
//  Bmi1911662
//
//  Created by english on 2021-09-13.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var btnCalculate: UIButton!
    @IBOutlet weak var lblResult: UILabel!
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        btnCalculate.layer.cornerRadius = 10
    }

    @IBAction func btnCalculate(_ sender: Any) {
        
        lblResult.isHidden = false
        
    }
    
    @IBAction func txtHeighChange(_ sender: Any) {
        
        lblResult.isHidden = true
    }
    
    @IBAction func txtweightchange(_ sender: Any) {
        lblResult.isHidden = true
    }
    
}

