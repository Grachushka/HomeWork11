//
//  MySecondViewController.swift
//  homeWork11
//
//  Created by Pavel Procenko on 13/08/2019.
//  Copyright © 2019 Pavel Procenko. All rights reserved.
//

import UIKit

class MySecondViewController: UIViewController {

    @IBOutlet weak var mySwitch: UISwitch!
    var order: Order?
    @IBOutlet weak var sliderSugar: UISlider!
    
    @IBOutlet weak var currentValue: UILabel!
    @IBOutlet weak var maxValue: UILabel!
    @IBOutlet weak var minValue: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
     minValue.text = "\(sliderSugar.minimumValue)"
     maxValue.text = "\(sliderSugar.maximumValue)"
        
        currentValue.text = "\(sliderSugar.value)"
            
        mySwitch.isOn = false
        print("GG")
        print(order?.sizesForCup, order?.typesOfCoffee)
    }
    
    @IBAction func switchChanged(_ sender: UISlider) {
        
      currentValue.text = "\(Int(sender.value))"

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        
        order?.isOwnCup = mySwitch.isOn
        order?.sugar = sliderSugar.value
        
        (segue.destination as! ThreeTableViewController).order = order
    }

}
