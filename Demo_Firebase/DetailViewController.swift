//
//  DetailViewController.swift
//  Demo_Firebase
//
//  Created by Duy Bùi on 5/27/17.
//  Copyright © 2017 Duy Bùi. All rights reserved.
//

import UIKit
import Firebase

class DetailViewController: UIViewController {

    
    @IBOutlet weak var lblUserName: UILabel!
    
    @IBOutlet weak var lblPassword: UILabel!
    var userName: String?

    
    override func viewDidLoad() {
        super.viewDidLoad()
        lblUserName.text = userName

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
