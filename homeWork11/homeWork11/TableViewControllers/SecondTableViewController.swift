//
//  SecondTableViewController.swift
//  homeWork11
//
//  Created by Pavel Procenko on 13/08/2019.
//  Copyright © 2019 Pavel Procenko. All rights reserved.
//

import UIKit

class SecondTableViewController: UITableViewController {
    
    var arrayOfEnumSizesCoffee = SizesForCup.allCases
    let arrayOfSizes = SizesForCup.allCases.map { $0.rawValue }
    
    var order: Order?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        print(order?.typesOfCoffee)
      
    }



    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        return arrayOfSizes.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "basic2", for: indexPath)
        
        cell.textLabel?.text = "\(arrayOfSizes[indexPath.row])"


        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 100.0
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let cell = sender as! UITableViewCell
        let indexPath = tableView.indexPath(for: cell)!
        
        order?.sizesForCup = arrayOfEnumSizesCoffee[indexPath.row]
        (segue.destination as! MySecondViewController).order = order
    }
   
}
