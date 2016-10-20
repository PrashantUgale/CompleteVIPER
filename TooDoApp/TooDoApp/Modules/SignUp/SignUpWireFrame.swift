//
//  SignUpWireFrame.swift
//  GoProducts
//
//  Created by Anil.
//  Copyright © 2016 Go-jek. All rights reserved.
//


protocol ISignUpWireFrame: class {
    func present(viewModel: SignUpViewModel)
    
    
}


class SignUpWireFrame: ISignUpWireFrame {

    let appRouter: IAppRouter

    init(appRouter: IAppRouter) {
        self.appRouter = appRouter
    }
    
    func present(viewModel:SignUpViewModel){
        let view = appRouter.resolver.resolve(SignUpView.self, arguments:(appRouter, viewModel))!
        appRouter.displayViewWithoutDismiss(view, animateDisplay: false)
    }

}