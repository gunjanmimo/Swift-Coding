//
//  SignIn.swift
//  Newspedia
//
//  Created by Gunjan  Paul on 14/09/20.
//  Copyright © 2020 Gunjan  Paul. All rights reserved.
//

import UIKit
import Firebase


class SignIn: UIViewController {
//    text field
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func signInPressed(_ sender: UIButton) {
        if let email = emailField.text, let password = passwordField.text{
            Auth.auth().signIn(withEmail: email, password: password) { authResult, error in
                if let e = error{
                    print(e.localizedDescription)
                }
                else{
                    self.performSegue(withIdentifier: "signIn", sender: self)
                }
            }
        }
    }
}
