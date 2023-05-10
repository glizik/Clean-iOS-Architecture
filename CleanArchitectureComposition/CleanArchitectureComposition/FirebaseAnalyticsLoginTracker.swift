//
//  FirebaseAnalyticsLoginTracker.swift
//  CleanArchitectureComposition
//
//  Created by Mac on 2023. 05. 10..
//

import Foundation

// MARK: - Analytics

final class FirebaseAnalyticsLoginTracker: LoginUseCaseOutput {
    func loginSuceeded() {
        // send login event to firebase
    }
    
    func loginFailed() {
        // send error to firebase
    }
    
    
}
