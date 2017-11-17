//
//  MessageCell.swift
//  Smack
//
//  Created by Gutpinter Norbert on 2017. 11. 16..
//  Copyright © 2017. Gut Norbert. All rights reserved.
//

import UIKit

class MessageCell: UITableViewCell {

    //Outlets
    @IBOutlet weak var userImg: CircleImg!
    @IBOutlet weak var timeStampLbl: UILabel!
    @IBOutlet weak var messageBodyLbl: UILabel!
    @IBOutlet weak var userNameLbl: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func configureCell(message: Message) {
        messageBodyLbl.text = message.message
        userNameLbl.text = message.userName
        userImg.image = UIImage(named: message.userAvatar)
        userImg.backgroundColor = UserDataService.instance.returnUIColor(components: message.userAvatarColor)
        
        guard var isoDate = message.timeStamp else {return}
        let end = isoDate.index(isoDate.endIndex, offsetBy: -5) //cut the last 5 digit
        isoDate = isoDate.substring(to: end)
        
        let isoFormatter = ISO8601DateFormatter()
        let chatDate = isoFormatter.date(from: isoDate.appending("z")) // puts z at the back
        
        let newFormatter = DateFormatter()
        newFormatter.dateFormat = "MMM d, h:mm a" // format month,day,hour,min,am/pm
        
        if let finalDate = chatDate {
            let finalDate = newFormatter.string(from: finalDate)
            timeStampLbl.text = finalDate
        }
    }

}
