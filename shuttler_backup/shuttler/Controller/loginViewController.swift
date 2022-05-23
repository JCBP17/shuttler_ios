//
//  loginViewController.swift
//  shuttler
//
//  Created by 김경호 on 2022/05/15.
//

import UIKit

class loginViewController: UIViewController{
    @IBOutlet weak var loginID : UITextField!
    @IBOutlet weak var loginPW : UITextField!
    @IBOutlet weak var loginButton : UIButton!
    
    @IBAction func loginPost(sender : AnyObject){
        guard let id = loginID.text, !id.isEmpty else {return}
        guard let pw = loginPW.text, !pw.isEmpty else {return}
        
        let loginSuccess : Bool = postComment(id : id, pw : pw)
        if loginSuccess{
            print("Login Success")
        }
        
    }
    
    
    

}


