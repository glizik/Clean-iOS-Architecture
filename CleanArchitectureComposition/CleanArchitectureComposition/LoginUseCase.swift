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

class LoginUseCase {
    func login(name: String, password: String) {
        
    }
}
