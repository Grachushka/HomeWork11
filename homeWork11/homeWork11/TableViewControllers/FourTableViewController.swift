//
//  FourTableViewController.swift
//  homeWork11
//
//  Created by Pavel Procenko on 16/08/2019.
//  Copyright © 2019 Pavel Procenko. All rights reserved.
//

import UIKit

class FourTableViewController: UITableViewController {
    var order: Order?
    
    @IBOutlet weak var coffeeLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var sizeLabel: UILabel!
    @IBOutlet weak var sugarLabel: UILabel!
    @IBOutlet weak var ownCupLabel: UILabel!
    @IBOutlet weak var toPayLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if order!.isOwnCup! {
            
            ownCupLabel.text = "YES"
            
        } else {
            
            ownCupLabel.text = "NO"
        }
        
        coffeeLabel.text = "\(order!.typesOfCoffee!.rawValue)"
        nameLabel.text = "\(order!.name!)"
        sizeLabel.text = "\(order!.sizesForCup!.rawValue) ml"
        sugarLabel.text = "\(Int(order!.sugar!)) g"
        toPayLabel.text = "\(order!.bill!) $"

    }


    @IBAction func confirmButton(_ sender: UIButton) {
        
        getAlert(order: order!)
        
        
    }
    
    private func getAlert(order: Order)  {
        
        let alertController = UIAlertController(
            title: "Счёт",
            message: "Кофе будет стоить \(order.bill!)$. Вы уверены?",
            preferredStyle: .alert
        )
        let yes = UIAlertAction(title: "Да", style: .default) { _ in            
            
            let next:
                ViewController = self.storyboard?.instantiateViewController(withIdentifier: "ViewController") as! ViewController
            self.navigationController?.pushViewController(next, animated: true)
            
        }
        let no = UIAlertAction(title: "Нет", style: .cancel) { _ in
            print("Cancel")
            
        }
        
        alertController.addAction(yes)
        alertController.addAction(no)
        
        self.present(alertController, animated: true, completion: nil)
        
    }
    
}
