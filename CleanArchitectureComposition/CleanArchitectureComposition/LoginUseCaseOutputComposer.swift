//
//  LoginUseCaseOutputComposer.swift
//  CleanArchitectureComposition
//
//  Created by Mac on 2023. 05. 10..
//

import Foundation

// 6. step:
final class LoginUseCaseOutputComposer: LoginUseCaseOutput {
    let outputs: [LoginUseCaseOutput]
    
    init(_ outputs: [LoginUseCaseOutput]) {
        self.outputs = outputs
    }
    
    func loginSuceeded() {
        outputs.forEach { $0.loginSuceeded() }
    }
    
    func loginFailed() {
        outputs.forEach { $0.loginFailed() }
    }
    

}
