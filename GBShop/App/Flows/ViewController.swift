//
//  ViewController.swift
//  GBShop
//
//  Created by Сергей Зайцев on 29.11.2021.
//

import UIKit

class ViewController: UIViewController {
    let requestFactory = RequestFactory()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        auth(userName: "Somebody", password: "mypassword")
    }
    func auth(userName: String, password: String) {
        let auth = requestFactory.makeAuthRequestFactory()
        auth.login(userName: "Somebody", password: "mypassword") { response in
            switch response.result {
            case .success(let login):
                print(login)
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
    }
    
    
}

