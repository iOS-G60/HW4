//
//  ViewController.swift
//  HW4
//
//  Created by Serg on 1/30/18.
//  Copyright © 2018 Ann Tsarikovskaya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let bikeOne = Bicycle(wheel: 26, sizeFrame: 19, model: "XC26", price: 25000)
    let bikeTwo = Bicycle(wheel: 29, sizeFrame: 21, model: "XC29", price: 30000)

    @IBOutlet weak var testDriveLabel: UILabel!
    @IBOutlet weak var currentPriceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        bikeOne.printInfo()
        let cheapBike =  cheapestBike(bikes: [bikeOne, bikeTwo])
       print(cheapBike.model)
    }

    func cheapestBike(bikes: [Bicycle]) -> Bicycle {
        var cheapBikeIndex = 0
        for (index, bike) in bikes.enumerated() {
            if bike.price < bikes[cheapBikeIndex].price {
                cheapBikeIndex = index
            }
        }
        return bikes[cheapBikeIndex]
    }

    @IBAction func takeBike(_ sender: Any) {
        bikeOne.takeTestDrive()
        testDriveLabel.text = String(bikeOne.totalTestDrive())
        currentPriceLabel.text = String(bikeOne.currentPrice())

    }
    @IBAction func currentPrice(_ sender: Any) {
        currentPriceLabel.text = String(bikeOne.currentPrice())
        
    }
}

