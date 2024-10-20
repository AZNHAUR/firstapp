//
//  ViewController.swift
//  firstapp
//
//  Created by Aruzhan Ashim on 28.09.2024.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var textfield: UITextField!
    
    @IBOutlet weak var textfield2: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func add(_ sender: Any) {
        //label.text = textfield.text
        
        let a = textfield.text!
        
        let b = textfield2.text!
        
        // let sum = (Int(a) ?? 0) + (Int(b) ?? 0)
        
        if let numberA = Int(a), let numberB = Int(b) {
            
            let sum = numberA + numberB
            
            label.text = String(sum)
            
        } else {
            
            label.text = "Insert 2 numbers"
        }
        
        
    }
    
    @IBAction func subtract(_ sender: Any) {
        
        let a = textfield.text!
        
        let b = textfield2.text!
        
        guard let numberA = Int(a), let numberB = Int(b) else {
            
            label.text = "Insert 2 numbers"
            
            return
            
        }
        
        let difference = numberA - numberB
        
        label.text = String(difference)
        
    }
    
    @IBAction func multiply(_ sender: Any) {
        
        let a = textfield.text!
        let b = textfield2.text!
        
        guard let numberA = Int(a), let numberB = Int(b) else {
            label.text = "Insert 2 numbers"
            return
        }
        
        let product = numberA * numberB
        label.text = String(product)
        
    }
    
    @IBAction func divide(_ sender: Any) {
    
        let a = textfield.text!
        let b = textfield2.text!

        guard let numberA = Int(a), let numberB = Int(b) else {
            label.text = "Insert 2 numbers"
            return
        }

        guard numberB != 0 else {
            label.text = "Cannot divide by 0"
            return
        }

        let quotient = numberA / numberB
        label.text = String(quotient)
        
    }
    
}
    

