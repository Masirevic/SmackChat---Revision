//
//  LoginVC.swift
//  SmackChat
//
//  Created by Ljubomir on 1/7/18.
//  Copyright © 2018 Ljubomir. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {
    
    
    
    @IBOutlet weak var usernameTxt: UITextField!
    @IBOutlet weak var passwordTxt: UITextField!
    @IBOutlet weak var spiner: UIActivityIndicatorView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupView()
        
    }

    
    @IBAction func closePressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    
    
    @IBAction func createAccountBtnPressed(_ sender: Any) {
        performSegue(withIdentifier: TO_CREATE_ACCOUNT, sender: nil)
    }
    
    
    
    @IBAction func logiPressed(_ sender: Any) {
        spiner.isHidden = false
        spiner.startAnimating()
        guard let email  = usernameTxt.text , usernameTxt.text != "" else {return}
        guard let pass  = passwordTxt.text , passwordTxt.text != "" else {return}
        
        AuthService.instance.loginUser(email: email, password: pass) { (success) in
            if success {
                AuthService.instance.findUserByEmail(completion: { (success) in
                    if success {
                        NotificationCenter.default.post(name: NOTIF_USER_DATA_DID_CHANGE, object: nil)
                        self.spiner.isHidden = true
                        self.spiner.stopAnimating()
                        self.dismiss(animated: true, completion: nil)
                    }
                })
            }
        }
        
        
    }
    
    func setupView () {
        spiner.isHidden = true
        usernameTxt.attributedPlaceholder = NSAttributedString(string: "email", attributes: [NSAttributedStringKey.foregroundColor: smackPurplePlaceholder])
        passwordTxt.attributedPlaceholder = NSAttributedString(string: "password", attributes: [NSAttributedStringKey.foregroundColor: smackPurplePlaceholder])
        
    }
    
}
