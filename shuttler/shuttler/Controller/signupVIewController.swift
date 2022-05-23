//
//  signupVIewController.swift
//  shuttler
//
//  Created by 김경호 on 2022/05/23.
//

import UIKit

class signupViewController : UIViewController{


    @IBOutlet weak var signupID: UITextField!
    @IBOutlet weak var signupPW: UITextField!
    @IBOutlet weak var signupAdress: UITextField!
    @IBOutlet weak var signupPosition: UITextField!
    

    @IBAction func SignupButton(_ sender: Any) {
        guard let id = signupID.text, !id.isEmpty else {return}
        guard let pw = signupPW.text, !pw.isEmpty else {return}
        guard let address = signupAdress.text, !address.isEmpty else {return}
        guard let position = signupPosition.text, !position.isEmpty else {return}
        
        
    }
}
