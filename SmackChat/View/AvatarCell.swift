//
//  AvatarCell.swift
//  SmackChat
//
//  Created by Ljubomir on 1/8/18.
//  Copyright © 2018 Ljubomir. All rights reserved.
//

import UIKit

enum AvatarType {
    case dark
    case light
}


class AvatarCell: UICollectionViewCell {
    
    
    
    @IBOutlet weak var avatarImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setUpView()
    }
    
    
    func setUpView () {
        self.layer.backgroundColor = UIColor.lightGray.cgColor
        self.layer.cornerRadius = 10
        self.clipsToBounds = true
    }
    
    func configureCell (index: Int, type: AvatarType) {
        if type == AvatarType.dark {
            avatarImage.image = UIImage(named: "dark\(index)")
            self.layer.backgroundColor = UIColor.lightGray.cgColor
        } else {
            avatarImage.image = UIImage(named: "light\(index)")
            self.layer.backgroundColor = UIColor.gray.cgColor
        }
    }
    
    
    
}
