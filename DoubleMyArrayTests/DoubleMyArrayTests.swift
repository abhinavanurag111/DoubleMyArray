//
//  DoubleMyArrayTests.swift
//  DoubleMyArrayTests
//
//  Created by Abhinav Anurag on 03/04/23.
//

import XCTest
@testable import DoubleMyArray

final class DoubleMyArrayTests: XCTestCase {
    
    func testDoubleMultiplier() {
        let vc = ViewController()
        let input: [Float] = [
            2.3,
            4.5,
            6.8,
            9.66,
            123.982,
            23.12
        ]
        
        let inputSize = input.count
        let actualOutput = input.map { $0 * 2}
        
        
        let output = vc.doubleMultiplier(array: input, inputSize: inputSize)
        
        XCTAssertEqual(output, actualOutput)
    }
    
}

