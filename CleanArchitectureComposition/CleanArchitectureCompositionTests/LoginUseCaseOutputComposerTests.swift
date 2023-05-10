//
//  CleanArchitectureCompositionTests.swift
//  CleanArchitectureCompositionTests
//
//  Created by Mac on 2023. 05. 09..
//

import XCTest
@testable import CleanArchitectureComposition

final class LoginUseCaseOutputComposerTests: XCTestCase {

    func test_composingZeroOutputs_doesNotCrash() {
        let sut = LoginUseCaseOutputComposer([])
        sut.loginSuceeded()
        sut.loginFailed()
    }
    
    func test_composingOneOutput_delegatesSuceededMessage() {
        let output1 = LoginUseCaseOutputSpy()
        let sut = LoginUseCaseOutputComposer([output1])
        
        sut.loginSuceeded()
        
        XCTAssertEqual(output1.loginSuceededCallCount, 1)
        XCTAssertEqual(output1.loginFailedCallCount, 0)
    }
    
    // MARK: - Helpers
    
    private class LoginUseCaseOutputSpy: LoginUseCaseOutput {
        var loginSuceededCallCount = 0
        var loginFailedCallCount = 0
        
        func loginSuceeded() {
            loginSuceededCallCount += 1
        }
        
        func loginFailed() {
            loginFailedCallCount += 1
        }
    }
}
