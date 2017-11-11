//
//  CircleImg.swift
//  Smack
//
//  Created by Gutpinter Norbert on 2017. 11. 11..
//  Copyright © 2017. Gut Norbert. All rights reserved.
//

import UIKit

@IBDesignable
class CircleImg: UIImageView {
    
    override func awakeFromNib() {
        setupView()
    }
    
    func setupView() {
        self.layer.cornerRadius = self.frame.width / 2 //circle
        self.clipsToBounds = true
    }
    
    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        setupView()
    }

}
