//
//  Channel.swift
//  Smack
//
//  Created by Gutpinter Norbert on 2017. 11. 13..
//  Copyright © 2017. Gut Norbert. All rights reserved.
//

import Foundation

struct Channel: Decodable {
    //SWIFT-4
    /*public private(set) var _id: String! variables have to have the same name as the API
    public private(set) var name: String!
    public private(set) var description: String!
    public private(set) var __v: Int?*/
    
    public private(set) var channelTitle: String!
    public private(set) var channelDescription: String!
    public private(set) var id: String!
    
}
