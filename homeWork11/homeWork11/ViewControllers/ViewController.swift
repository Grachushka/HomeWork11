//
//  ViewController.swift
//  homeWork11
//
//  Created by Pavel Procenko on 13/08/2019.
//  Copyright © 2019 Pavel Procenko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let order = Order()
        (segue.destination as! TableViewController).order = order
    }
}

