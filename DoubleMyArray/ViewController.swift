
//  ViewController.swift
//  Created by Abhinav Anurag on 01/04/23.
//

import UIKit

class ViewController: UIViewController {

    // Array Input used for testing the functionality.
    
    let array: [Float] = [9.0, 12.5, 300.4, 423.6,912.2, 210.45]
    override func viewDidLoad() {
        super.viewDidLoad()
        let processedData = processUserInput(for: array)
        print("The output for the input array: \(array) : is")
        printOutputOnConsole(for: processedData)
    }
}

// Helper Functions

extension ViewController {
    
    
    // Wrapper Function
    
    public func processUserInput(for array: [Float]) -> [Float] {
        let inputSize = array.count
        return doubleMultiplier(array: array, inputSize: inputSize)
    }
    
    // Function which doubles the input array
    
    public func doubleMultiplier(array: [Float], inputSize: Int) -> [Float] {
        let arraySize = array.count
        var arrayPointer = UnsafeMutablePointer<Float>.allocate(capacity: inputSize)
        
        arrayPointer.initialize(from: array, count: inputSize)
        arrayPointer = doubleThisArray(arrayPointer, Int32(arraySize))
        return convert(length: arraySize, data: arrayPointer)
    }
    
    // Function which convert the C style array to Swift Style Array.

    public func convert(length: Int, data: UnsafePointer<Float>) -> [Float] {

        let buffer = UnsafeBufferPointer(start: data, count: length);
        return Array(buffer)
    }
    
    // Function to print the result on Console
    
    private func printOutputOnConsole(for array: [Float]) -> () {
        print(array)
    }
}
