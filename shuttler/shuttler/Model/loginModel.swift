//
//  loginModel.swift
//  shuttler
//
//  Created by 김경호 on 2022/05/23.
//

import Foundation

struct LoginInfo:Codable{
    let id : String
    let pw : String
}

struct SignupInfo : Codable{
    let id : String
    let pw : String
    let address : String
    let position : String
}

struct getComment:Codable{
    let name : String
    let position : Int
    let pin : String
    let ms : String
}

func Login(id : String, pw : String) -> Bool{
    let comment = LoginInfo(id : id, pw : pw)
    print(comment)
    guard let loginData = try? JSONEncoder().encode(comment)
    else {return false}
    print("Login Try")
    
    //DB URL
    let url = URL(string: "http://jaeryurp.duckdns.org")
    
    //URL Request 객체를 정의
    var request = URLRequest(url: url!)
    request.httpMethod = "POST"
    
    //HTTP 메세지 헤더
    request.setValue("/login", forHTTPHeaderField: "Content-Type")
    
    //URLSession 객체를 통해 전송, 응답값 처리
    let task = URLSession.shared.uploadTask(with: request, from: loginData) {
        (date, response, error) in
        
        if let e = error{
            print("Error : \(e.localizedDescription)")
            return
        }
        print("_______________________")
        print("result")
        print(response)
        print("_______________________")
        
        
    }
    
    
    task.resume()
    return true
}



func signupPost(id : String, pw : String, address : String, position : String) -> Bool{
    let comment = SignupInfo(id: id, pw: pw, address: address, position: position)
    
    guard let signupData  = try? JSONEncoder().encode(comment)
    else {return false}
    
    let url = URL(string: "http://jaeryurp.duckdns.org")
    
    var request = URLRequest(url: url!)
    request.httpMethod = "POST"
    
    request.setValue("/register", forHTTPHeaderField: "Content-Type")
    
    let task = URLSession.shared.uploadTask(with: request, from: signupData){
        (date, response, error) in
        
        if let e = error{
            print("Error : \(e.localizedDescription)")
            return
        }
    }
    
    task.resume()
    return true
}
