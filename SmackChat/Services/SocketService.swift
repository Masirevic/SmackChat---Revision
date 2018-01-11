//
//  SocketService.swift
//  SmackChat
//
//  Created by Ljubomir on 1/11/18.
//  Copyright © 2018 Ljubomir. All rights reserved.
//

import UIKit
import SocketIO

class SocketService: NSObject {
    
    static let instance = SocketService ()
    
    override init () {
        super.init()
    }
    

    var socket : SocketIOClient = SocketIOClient(socketURL: URL(string: BASE_URL)!)
    
    func establishConnection () {
        socket.connect()
    }
    
    func closeConnection () {
        socket.disconnect()
    }
    
    
}
