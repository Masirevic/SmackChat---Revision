//
//  CircleImage.swift
//  SmackChat
//
//  Created by Ljubomir on 1/9/18.
//  Copyright © 2018 Ljubomir. All rights reserved.
//

import UIKit

@IBDesignable
class CircleImage: UIImageView {

    override func awakeFromNib() {
        super.awakeFromNib()
        setupView()
        
    }

    func setupView () {
       self.layer.cornerRadius = self.frame.width / 2
       self.clipsToBounds = true
    }
    
    
    override func prepareForInterfaceBuilder() {
        setupView()
    }
    
}
