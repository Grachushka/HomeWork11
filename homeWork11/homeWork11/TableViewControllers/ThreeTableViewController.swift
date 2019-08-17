//
//  ThreeTableViewController.swift
//  homeWork11
//
//  Created by Pavel Procenko on 14/08/2019.
//  Copyright © 2019 Pavel Procenko. All rights reserved.
//

import UIKit

class ThreeTableViewController: UITableViewController {

    var arrayOfNames = DataBase.sharedInstance.getArrayOfNames()
    
    var order: Order?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(order?.isOwnCup)
        
        let refreshControl = UIRefreshControl()
        refreshControl.addTarget(self, action: #selector(refreshAction), for: .valueChanged)
        tableView.refreshControl = refreshControl

    }
    
    @objc func refreshAction() {
        
        arrayOfNames.shuffle()
        tableView.reloadData()
        tableView.refreshControl?.endRefreshing()
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
  
       return arrayOfNames.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "basic3", for: indexPath)

        cell.textLabel?.text = arrayOfNames[indexPath.row]
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 100.0
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let cell = sender as! UITableViewCell
        let indexPath = tableView.indexPath(for: cell)!
        
        order?.name = arrayOfNames[indexPath.row]
        
        
        (segue.destination as! FourTableViewController).order = order
    }
    
}
