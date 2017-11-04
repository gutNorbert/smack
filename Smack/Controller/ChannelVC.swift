//
//  ChannelVC.swift
//  Smack
//
//  Created by Gutpinter Norbert on 2017. 11. 04..
//  Copyright © 2017. Gut Norbert. All rights reserved.
//

import UIKit

class ChannelVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.revealViewController().rearViewRevealWidth = self.view.frame.size.width - 60
    }

}
