//
//  ViewController.swift
//  TestFunctions
//
//  Created by Suresh R on 18/12/17.
//  Copyright © 2017 Tringapps Inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.imageTypesEx()
        
    }
    
    func imageTypesEx() {
        //https://medium.com/@ranleung/uiimage-vs-ciimage-vs-cgimage-3db9d8b83d94
        let data = UIImagePNGRepresentation(#imageLiteral(resourceName: "login.jpg"))
        let loginImage = UIImage(data: data!)
        
        let _ = CIImage(image: loginImage!)
        
        //        var aNewUIImage = UIImage(CGImage: UIImag)
        //where imageRef is a CGImage
    }
    
    @IBAction func checkStatus(_ sender: Any) {
        
        let photo = Photo(name: "Suresh", url: "http://www.suresh.com/", size: Size(width: 12.0, height: 120.0))
        print(photo) // Need implementation
        
        //Program 1
        print(self.testFunctions(21))
        
        //Program 2
        self.callGeneric()
        
        //Program 3
        self.callDigitMath()
        
        //Program 4
        print("Check Symbol: %@", self.checkSymbolOpertor())
    }
    
    func testFunctions(_ number: Int) -> String {
        
        var count = 2
        var prime = "is Prim number"
        
        if number > 1 && number < 4 {
            prime = "is Prim number"
        }
        
        while count < number {
            if number % count == 0 {
                prime = "is Not a Prim"
                break
            }
            count += 1
        }
        return prime
    }
    
    func callGeneric() {
        let status = self.compareValues(110.125412, 200.245123)
        let _ = self.compareValues("abc", "abc")
        
        print("Generic status", status)
    }
    
    func compareValues<T: Comparable>(_ a: T, _ b: T) -> Bool {
        
        if a >= b {
            return true
        }
        return false
    }
    
    func callDigitMath() {
        
        let value = [2,3,5,1,2,1]
        var modulos = 1
        
        for index in value.reversed() {
            print("\(index): \(modulos) digit")
            modulos = modulos * 10
        }
    }
    
    func checkSymbolOpertor() -> String {
        
        let openSymbols: [Character] = ["(","{","[","<"]
        let closeSymbols: [Character] = [")","}","]",">"]
        let inputSymbols = "{([[{([])}]])}"
        var inputSymbolsArray = [Character]()
        
        var stackItems = [Character]()
        
        for char in inputSymbols {
            inputSymbolsArray.append(char)
        }
        
        guard inputSymbolsArray.count % 2 == 0 else {
            return "NO"
        }
        
        for char in inputSymbolsArray { // Push
            if openSymbols.contains(char) {
                stackItems.append(char)
            } else if closeSymbols.contains(char) {
                let item = closeSymbols.index(of: char)
                let openItem = openSymbols[item!]
                if stackItems.count > 0 && stackItems.last == openItem {
                    stackItems.removeLast() 
                } else {
                    stackItems.append(char)
                }
            }
        }
        
        return (stackItems.count == 0) ? "YES" : "NO"
    }
    
}







