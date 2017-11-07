//
//  RoundedButton.swift
//  Smack
//
//  Created by Gutpinter Norbert on 2017. 11. 07..
//  Copyright © 2017. Gut Norbert. All rights reserved.
//

import UIKit

@IBDesignable
class RoundedButton: UIButton {

    @IBInspectable var cornerRadius: CGFloat = 3.0 {
        didSet {
          self.layer.cornerRadius = cornerRadius
    }
    }
    
    override func awakeFromNib() {
        self.setupView()
    }
    
    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        self.setupView()
    }
    
    func setupView() {
        self.layer.cornerRadius = cornerRadius
    }

}

