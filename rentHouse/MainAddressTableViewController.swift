//
//  MainAddressTableViewController.swift
//  rentHouse
//
//  Created by Lavpreet Kaur on 2017-11-07.
//  Copyright © 2017 RishuKhullar. All rights reserved.
//

import UIKit
var myIndex = 0
class MainAddressTableViewController: UITableViewController {

    var placesToShow = [Place]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print ("placesToShow.count \(placesToShow.count)" )
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // Return the count of the number of rows in the table
        return addressMain.count
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showdetail" {
            let controller = segue.destination as! SingleViewViewController
            
            let indexPath = self.tableView.indexPathForSelectedRow
            controller.test = (indexPath?.row)!
            print("sdfsdfsdfsdfsdf \((indexPath?.row)!)")
           
           
        }
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! addressViewTableViewCell
        
        cell.address.text = addressMain[indexPath.row]
        cell.price.text = String(priceMain[indexPath.row])
        return cell
    }
    
    

}
