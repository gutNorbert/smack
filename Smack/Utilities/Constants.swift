//
//  Constants.swift
//  Smack
//
//  Created by Gutpinter Norbert on 2017. 11. 05..
//  Copyright © 2017. Gut Norbert. All rights reserved.
//

import Foundation

typealias CompletionHandler = (_ Succes: Bool) -> () //renaming a type typealias, webrequest succesful or not

//URL Constants
let BASE_URL = "https://chattychatke.herokuapp.com/v1/"
let URL_REGISTER = "\(BASE_URL)account/register"
let URL_LOGIN = "\(BASE_URL)account/login"
let URL_USER_ADD = "\(BASE_URL)user/add"

//Segues

let TO_LOGIN = "toLogin"
let TO_CREATE_ACCOUNT = "toCreateAccount"
let UNWIND = "unwindToChannel"
let TO_AVATAR_PICKER = "toAvatarPicker"

//Notification Constans
let NOTIF_USER_DATA_DID_CHANGE = Notification.Name("notifUserDataChanged")

//Colors
let SMACK_PURPLE_PLACEHOLDER = #colorLiteral(red: 0.3254901961, green: 0.4196078431, blue: 0.7764705882, alpha: 0.5)

// User Defaults
let TOKEN_KEY = "token"
let LOGGED_IN_KEY = "loggedIn"
let USER_EMAIL = "userEmail"

//Headers
let HEADER = [
    "Content-Type": "application/json; charset=utf-8"
]
