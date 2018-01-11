//
//  Channel.swift
//  SmackChat
//
//  Created by Ljubomir on 1/11/18.
//  Copyright © 2018 Ljubomir. All rights reserved.
//

import Foundation


struct Channel : Decodable {
    
    public private (set) var channelTitle: String!
    public private (set) var channelDescription: String!
    public private (set) var id: String!
    
}
