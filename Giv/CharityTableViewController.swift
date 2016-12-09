//
//  CharityTableViewController.swift
//  
//
//  Created by Akash Kejriwal on 12/9/16.
//
//

import UIKit

class CharityTableViewController: UITableViewController {
    
    let auth = Auth()
    var charityNames = [String]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        auth.getCharities()
        
        charityNames = ["UNICEF", "RED CROSS", "SUSAN KOMEN"]
        
        tableView.backgroundView = UIImageView(image: UIImage(named: "blue_wallpaper-1"))
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
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
        // #warning Incomplete implementation, return the number of rows
        return charityNames.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = self.tableView.dequeueReusableCell(withIdentifier:"CharityViewCell", for: indexPath) as! CharityViewCell
        
        let row = indexPath.row
        
        cell.layer.borderWidth = 1.5
        cell.layer.borderColor = UIColor.white.cgColor
        
        cell.charityName.text = charityNames[row]
        return cell
    }
    

}
