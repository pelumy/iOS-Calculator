//
//  ViewController.swift
//  calculator
//
//  Created by mac on 31/08/2020.
//  Copyright © 2020 chavicodes. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var displayedNumber: Double = 0
    var previousNumber: Double = 0
    var performingArithmetic = false
    var mathOperation = 0
    
    @IBOutlet weak var displayLabel: UILabel!
    
    @IBAction func numbers(_ sender: UIButton)
    {
        if performingArithmetic == true {
            displayLabel.text = String(sender.tag - 1)
            displayedNumber = Double(displayLabel.text!)!
            performingArithmetic = false
        }
        else {displayLabel.text = displayLabel.text! + String(sender.tag - 1)
        displayedNumber = Double(displayLabel.text!)!
        }

    }
    
    
    @IBAction func arithmethicButtons(_ sender: UIButton)
    {
        
        if displayLabel.text != "" && sender.tag != 11 && sender.tag != 18
        {
            previousNumber = Double(displayLabel.text!)!
            
            if sender.tag == 12 {
                displayLabel.text = String(-(Int(previousNumber)))
            }
            if sender.tag == 13 {
                displayLabel.text = "%"
            }
            else if sender.tag == 14 {
                displayLabel.text = "÷"
            }
            else if sender.tag == 15 {
                displayLabel.text = "x"
            }
            else if sender.tag == 16 {
                displayLabel.text = "-"
                
            }
            else if sender.tag == 17 {
                displayLabel.text = "+"
            }
            else if sender.tag == 19 {
                displayLabel.text = String(Int(previousNumber)) + "."
            }
            mathOperation = sender.tag
            performingArithmetic = true
        }
            
        else if sender.tag == 18
        {
            if mathOperation == 13 {
                displayLabel.text = String(Int(previousNumber) % Int(displayedNumber))
            }
            else if mathOperation == 14 {
                displayLabel.text = String(previousNumber / displayedNumber)
            }
            else if mathOperation == 15 {
                displayLabel.text = String(previousNumber * displayedNumber)
            }
            else if mathOperation == 16 {
                displayLabel.text = String(previousNumber - displayedNumber)
            }
            else if mathOperation == 17 {
                displayLabel.text = String(previousNumber + displayedNumber)
            }
            else if mathOperation == 12 {
                displayLabel.text = String(-(Int(previousNumber)))
            }
            
        }
        
        else if sender.tag == 11 {
            displayLabel.text = ""
            previousNumber = 0
            displayedNumber = 0
            mathOperation = 0
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    override var preferredStatusBarStyle: UIStatusBarStyle {
    return .lightContent
    }


}

