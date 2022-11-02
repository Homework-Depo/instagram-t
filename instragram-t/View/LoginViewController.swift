//
//  LoginViewController.swift
//  instragram-t
//
//  Created by Javier on 29/10/22.
//

import UIKit
import FirebaseAuth

class LoginViewController: UIViewController {

    
    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        txtPassword.isSecureTextEntry = true
    }
    
    override func viewDidAppear(_ animated: Bool) {
        checkSession()
    }
    
    func checkSession() {
        if Auth.auth().currentUser != nil {
            self.performSegue(withIdentifier: "segueLogin", sender: nil)
        }
    }
    
    
    @IBAction func OnTapLogin(_ sender: UIButton) {
        if txtEmail.text == "" || txtPassword.text == "" {
            let alert = UIAlertController(title: "Error", message: "Completa los campos", preferredStyle: .alert)
            let alertButton = UIAlertAction(title: "ok", style: .default)
            alert.addAction(alertButton)
            present(alert, animated: true)
        }
        
        signIn(email: txtEmail.text!, password: txtPassword.text!)
    }
    
    
    func signIn(email: String, password: String ) {
        Auth.auth().signIn(withEmail: email, password: password) { authResult, error in
            if error == nil {
                self.performSegue(withIdentifier: "segueLogin", sender: nil)
            } else {
                self.signUp(email: email, password: password)
            }
        }
    }
    
    func signUp(email: String, password: String) {
        Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
        
            if error != nil {
                let alert = UIAlertController(title: "Error", message: error?.localizedDescription, preferredStyle: .alert)
                let alertButton = UIAlertAction(title: "ok", style: .default)
                alert.addAction(alertButton)
                self.present(alert, animated: true)
            } else {
                self.performSegue(withIdentifier: "segueLogin", sender: nil)
            }
        }
    }
    
    
}
