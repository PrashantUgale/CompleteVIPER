//
//  SignUpAssembly.swift
//  GoProducts
//
//  Created by Anil.
//  Copyright © 2016 Go-jek. All rights reserved.
//

import Foundation
import Swinject

class SignUpAssembly: AssemblyType {

    func assemble(container: Container) {
        container.register(ISignUpInteractor.self) { _ in
            SignUpInteractor()
        }

        container.register(ISignUpWireFrame.self) { (r, appRouter: IAppRouter) in
            SignUpWireFrame(appRouter: appRouter)
        }

        container.register(ISignUpPresenter.self) { (r, view: ISignUpView, viewModel:SignUpViewModel, appRouter: IAppRouter) in
            let interactor = r.resolve(ISignUpInteractor.self)!
            let wireframe = r.resolve(ISignUpWireFrame.self, argument: appRouter)!
            let presenter = SignUpPresenter(view: view, viewModel:viewModel, interactor: interactor, wireframe: wireframe)
            interactor.presenter = presenter
            return presenter
        }

        container.register(SignUpView.self) {  (r, appRouter: IAppRouter, viewModel:SignUpViewModel) in
            let view = SignUpView()
            let presenter = r.resolve(ISignUpPresenter.self, arguments: (view as ISignUpView,viewModel:viewModel, appRouter))!
            view.presenter = presenter

            return view
        }

    }

}