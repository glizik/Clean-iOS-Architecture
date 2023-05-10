//
//  LoginUseCase.swift
//  CleanArchitectureComposition
//
//  Created by Mac on 2023. 05. 09..
//

import Foundation

// MARK: - Business logic

protocol LoginUseCaseOutput {
    func loginSuceeded() // User
    func loginFailed() // Error
}

final class LoginUseCase {
    let output: LoginUseCaseOutput
    
    init(output: LoginUseCaseOutput) {
        self.output = output
    }
    
    func login(name: String, password: String) {
        // if success
        output.loginSuceeded()
        // else
        output.loginFailed()

    }
}
