//
//  SignUpInteractor.swift
//  GoProducts
//
//  Created by Anil.
//  Copyright © 2016 Go-jek. All rights reserved.
//

import Foundation

class SignUpModule: IModule {
    let appRouter: IAppRouter

    init(appRouter:IAppRouter) {
        self.appRouter = appRouter
    }

    func presentView(parameters:[String:Any]) {
        let wireframe = appRouter.resolver.resolve(ISignUpWireFrame.self, argument:appRouter)!
        wireframe.present(SignUpViewModel())
    }
}
