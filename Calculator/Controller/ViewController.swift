//
//  ViewController.swift
//  Calculator
//
//  Created by Eng. Motlaq Alnassafi on 26/09/2023.
//

import UIKit

class ViewController: UIViewController {

    
    var labelTextOne : String = ""
    var labelTextTwo : String = ""
    var operation : String = ""
    
    var buttonArray : [UIButton] = [UIButton]()

    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var button7: UIButton!
    @IBOutlet weak var button8: UIButton!
    @IBOutlet weak var button9: UIButton!
    @IBOutlet weak var divide: UIButton!
    @IBOutlet weak var button4: UIButton!
    @IBOutlet weak var button5: UIButton!
    @IBOutlet weak var button6: UIButton!
    @IBOutlet weak var multiply: UIButton!
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var subtract: UIButton!
    @IBOutlet weak var button0: UIButton!
    @IBOutlet weak var resetButton: UIButton!
    @IBOutlet weak var addition: UIButton!
    @IBOutlet weak var equal: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // added a button array so that i can make changes to all button simultaneously
        self.buttonArray = [
            self.button7,self.button8,self.button9,self.divide,
            self.button4,self.button5,self.button6,self.multiply,
            self.button1,self.button2,self.button3,self.subtract,
            self.button0,self.resetButton,self.addition,self.equal
        ]
        
        textLabel.text = "0"
        textLabel.font = .systemFont(ofSize: 60)
        
        for i in buttonArray {
            i.layer.cornerRadius = 20
        }
    }
}

//MARK: - Button extenstion

extension ViewController {
    
    
    @IBAction func buttonHandler(_ sender: UIButton) {
       
        if sender.titleLabel?.text == "0" {
            labelTextOne += "0"
            textLabel.text = labelTextOne
        } else if sender.titleLabel?.text == "1" {
            labelTextOne += "1"
            textLabel.text = labelTextOne
        } else if sender.titleLabel?.text == "2" {
            labelTextOne += "2"
            textLabel.text = labelTextOne
        } else if sender.titleLabel?.text == "3" {
            labelTextOne += "3"
            textLabel.text = labelTextOne
        } else if sender.titleLabel?.text == "4" {
            labelTextOne += "4"
            textLabel.text = labelTextOne
        } else if sender.titleLabel?.text == "5" {
            labelTextOne += "5"
            textLabel.text = labelTextOne
        } else if sender.titleLabel?.text == "6" {
            labelTextOne += "6"
            textLabel.text = labelTextOne
        } else if sender.titleLabel?.text == "7" {
            labelTextOne += "7"
            textLabel.text = labelTextOne
        } else if sender.titleLabel?.text == "8" {
            labelTextOne += "8"
            textLabel.text = labelTextOne
        } else if sender.titleLabel?.text == "9" {
            labelTextOne += "9"
            textLabel.text = labelTextOne
        } else if sender.titleLabel?.text == "C" {
            textLabel.text = "0"
            labelTextTwo = ""
            labelTextOne = ""
        } else if sender.titleLabel?.text == "+" {
            labelTextTwo = labelTextOne
            labelTextOne = ""
            operation = "Add"
        } else if sender.titleLabel?.text == "-" {
            labelTextTwo = labelTextOne
            labelTextOne = ""
            operation = "Sub"
        } else if sender.titleLabel?.text == "/" {
            labelTextTwo = labelTextOne
            labelTextOne = ""
            operation = "Div"
        } else if sender.titleLabel?.text == "X" {
            labelTextTwo = labelTextOne
            labelTextOne = ""
            operation = "Multiplication"
        } else {
            //Fixed by using nill coalescing operator
            let valueOne : Int = Int(labelTextOne) ?? 0
            let valueTwo : Int = Int(labelTextTwo) ?? 0
            
            var total : Int = 0
            
            if operation == "Multiplication" {
                total = valueTwo * valueOne
                textLabel.text="\(total)"
            }
            else if operation == "Div" {
                if valueOne != 0 {
                    total = valueTwo / valueOne
                    textLabel.text="\(total)"
                } else{
                    textLabel.text = "Error"
                    labelTextOne = ""
                    labelTextTwo = ""
                }
            }
            else if operation == "Sub" {
                total = valueTwo - valueOne
                textLabel.text="\(total)"
            }
            else if operation == "Add" {
                total = valueTwo + valueOne
                textLabel.text="\(total)"
            }
            else{
                textLabel.text = "0"
            }
            labelTextTwo = ""
            labelTextOne = String(total)
        }
    }
}
