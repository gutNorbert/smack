//
//  ChannelVC.swift
//  Smack
//
//  Created by Gutpinter Norbert on 2017. 11. 04..
//  Copyright © 2017. Gut Norbert. All rights reserved.
//

import UIKit

class ChannelVC: UIViewController {
    
    //Outlets
    @IBOutlet weak var loginBtn: UIButton!
    @IBOutlet weak var userImg: CircleImg!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.revealViewController().rearViewRevealWidth = self.view.frame.size.width - 60
        NotificationCenter.default.addObserver(self, selector: #selector(ChannelVC.userDataDidChange(_:)), name: NOTIF_USER_DATA_DID_CHANGE, object: nil)
    }
    @IBAction func loginBtnPressed(_ sender: Any) {
        performSegue(withIdentifier: TO_LOGIN, sender: nil)
    }
    
    @IBAction func prepareForUnwind(segue: UIStoryboardSegue) {
        
    }
    
    @objc func userDataDidChange(_ notif: Notification) {
        if AuthService.instance.isLoggedIn{
            loginBtn.setTitle(UserDataService.instance.name, for: .normal)
            userImg.image = UIImage(named: UserDataService.instance.avatarName)
            userImg.backgroundColor = UserDataService.instance.returnUIColor(components: UserDataService.instance.avatarColor)
        } else {
            loginBtn.setTitle("Login", for: .normal)
            userImg.image = UIImage(named: "menuProfileIcon")
            userImg.backgroundColor = UIColor.clear
        }
    }
}
