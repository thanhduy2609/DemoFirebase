//
//  ViewController.swift
//  Demo_Firebase
//
//  Created by Duy Bùi on 5/26/17.
//  Copyright © 2017 Duy Bùi. All rights reserved.
//

import UIKit
import Firebase

class ViewController: UIViewController {

    @IBOutlet weak var lblEmail: UITextField!
    
    @IBOutlet weak var lblPassword: UITextField!
    
    @IBOutlet weak var lblEmailLogin: UITextField!
    
    @IBOutlet weak var lblPasswordLogin: UITextField!
    
    var mDatabase: DatabaseReference!

    
    @IBAction func btnLoginClick(_ sender: Any) {
        let email: String = lblEmailLogin.text!
        let password: String = lblPasswordLogin.text!
        self.showSpinner {}
        Auth.auth().signIn(withEmail: email, password: password) { (user, error) in
            if error == nil {
                
               let src = self.storyboard?.instantiateViewController(withIdentifier: "Main") as! DetailViewController
                src.userName = email
                self.present(src, animated: true, completion: nil)
            }
        }
    }
    
    @IBAction func btnCreate(_ sender: Any) {
        Auth.auth().createUser(withEmail: lblEmail.text!, password: lblPassword.text!) { (user, error) in
            if (error == nil) {
                //save data into firebase database
                let data = ["uid": user?.uid,
                        "email": self.lblEmail.text!,
                        "password": self.lblPassword.text!
                ]
                //save data
                self.mDatabase.child("users").child((user?.uid)!).updateChildValues(data)
                
            }
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        mDatabase = Database.database().reference();
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

