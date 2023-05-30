//
//  ViewController.swift
//  TestExample1
//
//  Created by engin gülek on 30.05.2023.
//

import UIKit


class ViewController: UIViewController {
    private weak var usernameTextField = UITextField()
    private weak var passwordTextField = UITextField()
    
    private let dumyDatabae = [User(username: "kilo loca", password: "password1")]
    private let validation : ValidationService
    
    
    init( validation: ValidationService) {
       
        self.validation = validation
        super.init(nibName: nil, bundle: nil)

    }
    
    required init?(coder: NSCoder) {
        self.validation = ValidationService()
        super.init(coder: coder)
    }
    
  
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func didTapButton(){
        
        do {
            let username = try validation.validationUsername(usernameTextField?.text)
            let password = try validation.validatePassword(passwordTextField?.text)
            
           
            
            if let user = dumyDatabae.first(where: { user in
                user.username == username && user.password == username
            }){
                print("alert")
            }
        }catch{
            print(error)
        }
        
    }


}

