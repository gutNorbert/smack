//
//  CreateAccountVC.swift
//  Smack
//
//  Created by Gutpinter Norbert on 2017. 11. 05..
//  Copyright © 2017. Gut Norbert. All rights reserved.
//

import UIKit

class CreateAccountVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func closePressed(_ sender: Any) {
        performSegue(withIdentifier: UNWIND, sender: nil)
    }
}
