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
    
    @IBAction func btnLoginClick(_ sender: Any) {
        let email: String = lblEmailLogin.text!
        let password: String = lblPasswordLogin.text!
        
        Auth.auth().signIn(withEmail: email, password: password) { (user, error) in
            if error == nil {
                print(user?.uid)
//                let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
//                
//                let detailViewController = storyBoard.instantiateViewController(withIdentifier: "detailView") as! DetailViewController
//                self.present(detailViewController, animated: true, completion: nil)
                
               let src = self.storyboard?.instantiateViewController(withIdentifier: "Main") as! DetailViewController
                src.userName = email
                self.present(src, animated: true, completion: nil)
            }
        }
    }
    
    @IBAction func btnCreate(_ sender: Any) {
        Auth.auth().createUser(withEmail: lblEmail.text!, password: lblPassword.text!) { (user, error) in
            print("\(String(describing: user?.email)) created")
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

