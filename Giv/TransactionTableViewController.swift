//
//  TransactionTableViewController.swift
//  Giv
//
//  Created by Akash Kejriwal on 12/6/16.
//  Copyright © 2016 Akash Kejriwal. All rights reserved.
//

import UIKit

extension Double {
    /// Rounds the double to decimal places value
    func roundTo(places:Int) -> Double {
        let divisor = pow(10.0, Double(places))
        return (self * divisor).rounded() / divisor
    }
}

class TransactionTableViewController: UITableViewController {
    
    let auth = Auth()
    var transactionNames = [String]()
    var transactionCharges = [String]()
    var transactionSums = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        auth.getUserTransactions()
        
        tableView.backgroundView = UIImageView(image: UIImage(named: "blue_wallpaper-1"))
        
        transactionNames = ["TACO BELL",
                            "ABP",
                            "ENTROPY ",
                            "CVS",
                            "GALLO", "TACO BELL",
                            "ABP",
                            "ENTROPY ",
                            "CVS",
                            "GALLO"]
        
        transactionCharges = ["2.15", "2.50", "3.81", "1.91", "1.90", "2.15", "2.50", "3.81", "1.91", "1.90"]
        transactionSums    = ["0.85", "0.50", "0.19", "0.09", "0.01", "0.85", "0.50", "0.19", "0.09", "0.01"]
        }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return transactionNames.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = self.tableView.dequeueReusableCell(withIdentifier:"TransactionViewCell", for: indexPath) as! TransactionViewCell
        
        let row = indexPath.row
        
        cell.layer.borderWidth = 1.5
        cell.layer.borderColor = UIColor.white.cgColor
                
        cell.transactionCompany.text = transactionNames[row]
        cell.transactionCharge.text = transactionCharges[row]
        cell.transactionSum.text = transactionSums[row]
               return cell
    }
}
