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

//Segues

let TO_LOGIN = "toLogin"
let TO_CREATE_ACCOUNT = "toCreateAccount"
let UNWIND = "unwindToChannel"

// User Defaults
let TOKEN_KEY = "token"
let LOGGED_IN_KEY = "loggedIn"
let USER_EMAIL = "userEmail"

//Headers
let HEADER = [
    "Content-Type": "application/json; charset=utf-8"
]
