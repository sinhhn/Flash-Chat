//
//  RegisterViewController.swift
//  Flash Chat
//
//  Created by ホアンゴックシン on 2018/10/23.
//  Copyright © 2018 vnguider. All rights reserved.
//

import UIKit
import Firebase

class RegisterViewController: UIViewController {


    //Pre-linked IBOutlets

    @IBOutlet var emailTextfield: UITextField!
    @IBOutlet var passwordTextfield: UITextField!


    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


    @IBAction func registerPressed(_ sender: AnyObject) {
        Auth.auth().createUser(withEmail: emailTextfield.text!, password: passwordTextfield.text!) { (user, error) in
            if error != nil {
                print(error)
            } else {
                print("Registration Successful!")
                self.performSegue(withIdentifier: "goToChat", sender: self)
            }
        }

    }
}
