//
//  UICustomButton.swift
//  Calculator
//
//  Created by Eng. Motlaq Alnassafi on 04/10/2023.
//

import UIKit

@IBDesignable // we made it @IBDesignable so that it may be editable from the storyboard editor/ it provides functionality for live rendering of changes of our custom views directly in a storyboard
class UICustomButton: UIButton {
    //@IBInspectable allows us to creat attributes in code that we can assign in a story board
    @IBInspectable var cornerRadius: CGFloat = 0 {
        didSet {
            self.layer.cornerRadius = cornerRadius
        }
    }
}
