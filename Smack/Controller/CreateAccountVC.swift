//
//  CreateAccountVC.swift
//  Smack
//
//  Created by Gutpinter Norbert on 2017. 11. 05..
//  Copyright © 2017. Gut Norbert. All rights reserved.
//

import UIKit

class CreateAccountVC: UIViewController {

    //Outlets
    @IBOutlet weak var usernameTxt: UITextField!
    @IBOutlet weak var emailTxt: UITextField!
    @IBOutlet weak var passTxt: UITextField!
    @IBOutlet weak var userImg: UIImageView!
   
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func closePressed(_ sender: Any) {
        performSegue(withIdentifier: UNWIND, sender: nil)
    }
    
    @IBAction func createAccountPressed(_ sender: Any) {
        guard let email = emailTxt.text , emailTxt.text != "" else {
            return
        }
        guard let pass = passTxt.text , passTxt.text != "" else{
            return
        }
        
        AuthService.instance.registerUser(email: email, password: pass) { (succes) in
            
            if succes {
                print("registered user!")
            }
        }
    }
    
    @IBAction func pickAvatarPressed(_ sender: Any) {
    }
  
    @IBAction func pickBGColorPressed(_ sender: Any) {
    }
    
}
