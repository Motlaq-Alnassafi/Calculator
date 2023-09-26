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
    
    @IBOutlet weak var textLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        textLabel.text = "0"
    }

    @IBAction func button0(_ sender: UIButton) {
        labelTextOne += "0"
        textLabel.text = labelTextOne
    }
    @IBAction func button1(_ sender: UIButton) {
        labelTextOne += "1"
        textLabel.text = labelTextOne
    }
    @IBAction func button2(_ sender: UIButton) {
        labelTextOne += "2"
        textLabel.text = labelTextOne
    }
    
    @IBAction func button3(_ sender: UIButton) {
        labelTextOne += "3"
        textLabel.text = labelTextOne
    }
    
    @IBAction func button4(_ sender: UIButton) {
        labelTextOne += "4"
        textLabel.text = labelTextOne
    }
    
    @IBAction func button5(_ sender: UIButton) {
        labelTextOne += "5"
        textLabel.text = labelTextOne
    }
    
    @IBAction func button6(_ sender: UIButton) {
        labelTextOne += "6"
        textLabel.text = labelTextOne
    }
    
    @IBAction func button7(_ sender: UIButton) {
        labelTextOne += "7"
        textLabel.text = labelTextOne
    }
    
    @IBAction func button8(_ sender: UIButton) {
        labelTextOne += "8"
        textLabel.text = labelTextOne
    }
    
    @IBAction func button9(_ sender: UIButton) {
        labelTextOne += "9"
        textLabel.text = labelTextOne
    }
    
    @IBAction func divButton(_ sender: UIButton) {
        labelTextTwo = labelTextOne
        labelTextOne = ""
        operation = "Div"
    }
    
    @IBAction func multiButton(_ sender: UIButton){
        labelTextTwo = labelTextOne
        labelTextOne = ""
        operation = "Multiplication"
    }
    
    
    @IBAction func subButton(_ sender: UIButton) {
        labelTextTwo = labelTextOne
        labelTextOne = ""
        operation = "Sub"
    }
    
    
    @IBAction func addButton(_ sender: UIButton) {
        labelTextTwo = labelTextOne
        labelTextOne = ""
        operation = "Add"
    }
    
    @IBAction func resetButton(_ sender: UIButton) {
        textLabel.text = "0"
        labelTextTwo = ""
        labelTextOne = ""
    }
    
    @IBAction func buttonEqual(_ sender: UIButton){
        
        //must fix valueone and valuetwo
        var valueOne : Int = Int(labelTextOne)!
        var valueTwo : Int = Int(labelTextTwo)!
        var total : Int = 0
        
        if operation == "Multiplication" {
            total = valueTwo * valueOne
            textLabel.text="\(total)"
        }
        else if operation == "Div" {
            total = valueTwo / valueOne
            textLabel.text="\(total)"
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
            textLabel.text = ""
        }
        labelTextTwo = ""
        labelTextOne = String(total)
    }
    
}

