# DoubleMyArray
This is a public repository for C and Swift Interoperability assignment.


In this project, I am trying to check the interoperability between C language and Swift Language.

The task is to write a function in swift which will take an array of float values and will return the array after doubling each entry of the array.
However, we are required to delegate the task to a C Function which will take the array of float, double it and write to the Swift function. 
The implementation logic of doubling the entries of the array has to be delegated to C Programming language function: Double This Array.

So, a wrapper Swift function: "processUserInput" with signature: 

1. private func processUserInput(for array: [Float]) -> [Float] 

takes the user input of array of float values and internally calls another Swift Function: "doubleMultiplier" with signature:

2. public func doubleMultiplier(array: [Float], inputSize: Int) -> [Float]

This is the main Swift function which has delegated the task its task of array doubling to a C function: "doubleThisArray" with signature: 

3. float * doubleThisArray(float userInput[], int n)

THE C FUNCTION TAKES THE ARRAY OF FLOAT AND RETURN A POINTER TO AN ARRAY OF DOUBLED FLOATING POINT VALUES.

![image](https://user-images.githubusercontent.com/11316570/229562134-b2f70f6b-39bf-4570-b853-47b53197f615.png)


The Swift Function: "convert" with signature:

4. public func convert(length: Int, data: UnsafePointer<Float>) -> [Float]
 
takes the pointer to the C style array and convert it to Swift Style Array.


The last Swift Function: "printOutputOnConsole" with signature:

5. private func printOutputOnConsole(for array: [Float]) -> ()

takes the output [Array of Doubled Values] and prints it on the console.



For now, we have taken a static/ hardcoded array for testing and showing it on console.

![image](https://user-images.githubusercontent.com/11316570/229564603-8c0e1ece-1925-40ec-b98d-748f5190d5ac.png)


UNIT TEST CASES

The unit test cases has been written for the core swift function "doubleMultiplier" responsible to achieve the functionality.

![image](https://user-images.githubusercontent.com/11316570/229565207-43cf67f6-0ca9-4c7c-86e8-0fc31667ab4f.png)


![image](https://user-images.githubusercontent.com/11316570/229569796-67e5e6b7-d52d-4b71-af54-18f8f0efa5b8.png)


Memory Leak

Memory has been deallocated after use to avoid any additonal memory wastage / leak.

![image](https://user-images.githubusercontent.com/11316570/229570396-3763c4b5-f592-4134-8e93-9c9edba50793.png)







