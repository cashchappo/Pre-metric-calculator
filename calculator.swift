//  ViewController.swift
//  calculator
//
//  Created by Danil Bochkarev on 06.08.2022

import UIKit

class ViewController: UIViewController {    
    @IBOutlet weak var firstNumber: UITextField!
    @IBOutlet weak var secondNumber: UITextField!
    @IBOutlet weak var actionNumber: UITextField!
    
    
    @IBOutlet weak var resultLabel: UILabel!
    @IBAction func resultGo(_ sender: UIButton) {

    var result = 0
        
    let x = firstNumber.text!
    let y = secondNumber.text!
    let checker = actionNumber.text!
    
    switch checker {
    case "*":
        result = Int(x)! * Int(y)!
    case "/":
        result = Int(x)! / Int(y)!
    case "-":
        result = Int(x)! - Int(y)!
    case "+":
        result = Int(x)! + Int(y)!
    default:
        result = 0
    }
   
    resultLabel.text = String(result)      
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)

    }
}
