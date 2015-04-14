//
//  ResultsController.swift
//  Watch Tip
//
//  Created by Adrian Lopez on 4/13/15.
//  Copyright (c) 2015 Adrian Lopez. All rights reserved.
//

import WatchKit
import Foundation


class ResultsController: WKInterfaceController {

    @IBOutlet weak var mealLabel: WKInterfaceLabel!
    
    @IBOutlet weak var percentLabel: WKInterfaceLabel!
    
    @IBOutlet weak var tipLabel: WKInterfaceLabel!
    
    @IBOutlet weak var totalLabel: WKInterfaceLabel!
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        var tipDictionary = context as! [String:Int]
        
        var tipPercentage = tipDictionary["tipPercentage"]!
        
        var costOfMeal = tipDictionary["costOfMeal"]!
        
        var tipDollar = Float(tipPercentage) * Float(costOfMeal) * 0.01
        
        var mealTotal = tipDollar + Float(costOfMeal)
        
        // Pass the tip percent to label
        self.percentLabel.setText("\(tipPercentage)% Tip:")
        
        // Pass cost of meal to label
        self.mealLabel.setText("$\(costOfMeal)")
        
        // Pass the tip amount to label
        self.tipLabel.setText("$\(tipDollar)")
        
        // Pass the total amount to the label
        self.totalLabel.setText("$\(mealTotal)")

        
        // Configure interface objects here.
        NSLog("%@ awakeWithContext", self)
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
