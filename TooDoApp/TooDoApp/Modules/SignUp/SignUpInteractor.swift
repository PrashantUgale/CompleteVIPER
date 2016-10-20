//
//  SignUpInteractor.swift
//  GoProducts
//
//  Created by Anil.
//  Copyright © 2016 Go-jek. All rights reserved.
//

protocol ISignUpInteractor: class {
    weak var presenter: ISignUpPresenter? { get set }
}

class SignUpInteractor : ISignUpInteractor{
    weak var presenter: ISignUpPresenter?
}
