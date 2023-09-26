//
//  ViewController.swift
//  Calculator
//
//  Created by Eng. Motlaq Alnassafi on 26/09/2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func Button(_ sender: Any) {
        titleLabel.text = "HELLO"
    }
    
}

