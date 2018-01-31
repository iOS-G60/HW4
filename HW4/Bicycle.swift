//
//  Bicycle.swift
//  HW4
//
//  Created by Serg on 1/30/18.
//  Copyright © 2018 Ann Tsarikovskaya. All rights reserved.
//

import Foundation

class Bicycle: NSObject {
    let wheel: Double
    let sizeFrame: Int
    let model: String
    var price: Int
    
    private var testDrive: Int
    
    init ( wheel: Double,
           sizeFrame: Int,
           model: String,
           price: Int,
           testDrive: Int = 0) {
        self.wheel = wheel
        self.sizeFrame = sizeFrame
        self.model = model
        self.price = price
        self.testDrive = testDrive
    }
    
    func takeTestDrive() {
        testDrive += 1
        print("Count test drive = \(testDrive)")
    }
    
    func printInfo() {
        print("Model = \(model) \nWheel = \(wheel), SizeFrame = \(sizeFrame), Price = \(price)\n")
    }
    
    func currentPricePrint() {
        print("Current price = \(price - (testDrive * 50))")
    }
    
    func totalTestDrive() -> Int {
        return testDrive
    }
    
    func currentPrice() -> Int {
        return price - (testDrive * 50)
    }
    
}


