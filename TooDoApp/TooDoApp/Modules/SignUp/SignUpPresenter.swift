//
//  SignUpPresenter.swift
//  GoProducts
//
//  Created by Anil.
//  Copyright © 2016 Go-jek. All rights reserved.
//

protocol ISignUpPresenter: class {
}

class SignUpPresenter : ISignUpPresenter {

	weak private var view: ISignUpView!
	private let interactor: ISignUpInteractor
    private let wireframe: ISignUpWireFrame
    private let viewModel: SignUpViewModel

    init(view: ISignUpView, viewModel:SignUpViewModel, interactor: ISignUpInteractor, wireframe: ISignUpWireFrame) {
        self.view = view
        self.interactor = interactor
        self.wireframe = wireframe
        self.viewModel = viewModel
    }
}


