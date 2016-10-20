//
//  SignUpView.swift
//  GoProducts
//
//  Created by Anil.
//  Copyright © 2016 Go-jek. All rights reserved.
//

import UIKit

protocol ISignUpView : class {

}

class SignUpView: UIViewController, ISignUpView {
    
    @IBOutlet weak var emailTextFelld: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var confairmTextField: UITextField!

	var presenter: ISignUpPresenter!

    init(){
        super.init(nibName: "SignUpView", bundle:nil)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }


	override func viewDidLoad() {
        super.viewDidLoad()
        
    }

}
