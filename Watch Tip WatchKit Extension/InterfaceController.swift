//
//  InterfaceController.swift
//  Watch Tip WatchKit Extension
//
//  Created by Adrian Lopez on 4/13/15.
//  Copyright (c) 2015 Adrian Lopez. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    var costOfMeal = 1
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    @IBOutlet weak var costLabel: WKInterfaceLabel!
    
    
    @IBAction func sliderTapped(value: Float) {
        self.costLabel.setText("$\(value)")
    }
   
    @IBAction func tenTapped() {
        self.pushControllerWithName("resultsController", context: ["costOfMeal":self.costOfMeal, "tipPercentage":10])
    }
    
    @IBAction func fifteenTapped() {
        self.pushControllerWithName("resultsController", context: ["costOfMeal":self.costOfMeal, "tipPercentage":15])
    }
  
    @IBAction func twentyTapped() {
        self.pushControllerWithName("resultsController", context: ["costOfMeal":self.costOfMeal, "tipPercentage":20])
    }
    
    
}
