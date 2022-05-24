//
//  ViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {

    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var zeroPctButton: UIButton!
    @IBOutlet weak var tenPctButton: UIButton!
    @IBOutlet weak var twentyPctButton: UIButton!
    @IBOutlet weak var splitNumberLabel: UILabel!
    var percentage = 0.1;

    @IBAction func tipChanged(_ sender: UIButton) {
        print("this is sender \(sender.titleLabel?.text)")
        if sender.titleLabel?.text == "10%" {
            percentage = 0.1;
            zeroPctButton.isSelected = false
            tenPctButton.isSelected = true
            twentyPctButton.isSelected = false
            
        } else if sender.titleLabel?.text == "20%" {
            percentage = 0.2;
            zeroPctButton.isSelected = false
            tenPctButton.isSelected = false
            twentyPctButton.isSelected = true
        } else {
            percentage = 0;
            zeroPctButton.isSelected = true
            tenPctButton.isSelected = false
            twentyPctButton.isSelected = false
        }
    }
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        let stepperValue:Float = Float(sender.value)
        splitNumberLabel.text = String(stepperValue)
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        let total:Double = Double(billTextField.text!)!
        let tip:Double = total * percentage
        
        let amount = total + tip
        
        let split = Double(splitNumberLabel.text!) ?? 2
        let per = amount / split
        print(per)
    }
}


