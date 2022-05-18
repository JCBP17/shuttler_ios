//
//  login.swift
//  shuttler
//
//  Created by 김경호 on 2022/05/15.
//

import Foundation

struct PostComment:Codable{
    let id : String
    let pw : String
}

struct getComment:Codable{
    let name : String
    let position : Int
    let pin : String
    let ms : String
}

func login(id : String, pw : String){
    if id == "test" && pw == "test"{
        return
    }
}

func postComment(id : String, pw : String) -> Bool{
    let comment = PostComment(id : id, pw : pw)
    guard let loginData = try? JSONEncoder().encode(comment)
    else {return false}
    ////
    //DB URL
    let url = URL(string: "jaeryurp.duckdns.org")
    
    //URL Request 객체를 정의
    var request = URLRequest(url: url!)
    request.httpMethod = "POST"
    
    //HTTP 메세지 헤더
    request.setValue("/login", forHTTPHeaderField: "Content-Type")
    
    //URLSession 객체를 통해 전송, 응답값 처리
    let task = URLSession.shared.uploadTask(with: request, from: loginData) {(date, response, error) in
        
        return
    }
    
    task.resume()
    return true
}
