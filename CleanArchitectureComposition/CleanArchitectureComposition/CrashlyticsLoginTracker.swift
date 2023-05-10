//
//  CrashlyticsLoginTracker.swift
//  CleanArchitectureComposition
//
//  Created by Mac on 2023. 05. 10..
//

import Foundation

// MARK: - Analytics

final class CrashlyticsLoginTracker: LoginUseCaseOutput {
    func loginSuceeded() {
        // send login event to crashlytics
    }
    
    func loginFailed() {
        // send error to crashlytics
    }
}
