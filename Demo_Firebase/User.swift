//
//  User.swift
//  Demo_Firebase
//
//  Created by Cntt03 on 5/27/17.
//  Copyright © 2017 Duy Bùi. All rights reserved.
//

import Foundation
import UIKit

class User: NSObject {
    var uid: String
    var email: String
    var password: String
    
    init(uid: String, email: String, password: String) {
        self.uid = uid
        self.email = email
        self.password = password
    }
    
    
}
