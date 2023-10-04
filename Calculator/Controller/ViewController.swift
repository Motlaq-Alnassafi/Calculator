//
//  ViewController.swift
//  Calculator
//
//  Created by Eng. Motlaq Alnassafi on 26/09/2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textLabel: UILabel!
    
    var isFinishedTyping = true
    
    private var displayValue: Int? {
        get {
            guard let n = Int(textLabel.text!) else {
                fatalError("Text Label cant be set as an int")
            }
            return n
        }
        set {
            if newValue == nil {
                textLabel.text = "Error"
            } else if let n = newValue {
                textLabel.text = String(n)
            }
        }
    }
    
    var calculator = CalculatorLogic()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        displayValue = 0
    }
}

//MARK: - Button extenstion

extension ViewController {
    
    @IBAction func operationButtonPressed(_ sender: UIButton) {
        isFinishedTyping = true
        
        if let _ = Int(textLabel.text!) {
            calculator.setNumber(displayValue!)
        }
        
        if let calcMethod = sender.titleLabel?.text {
            displayValue = calculator.calculate(calcMethod)
        }
    }
    
    @IBAction func numberButtonPressed(_ sender: UIButton) {
        if isFinishedTyping {
            textLabel.text = sender.titleLabel?.text
            isFinishedTyping = false
        } else {
            textLabel.text! += (sender.titleLabel?.text)!
        }
    }
}
