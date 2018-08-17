//
//  AllListsViewController.swift
//  Checklists
//
//  Created by Alexander Farber on 17.08.18.
//  Copyright © 2018 Alexander Farber. All rights reserved.
//

import UIKit

class AllListsViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func tableView(_ tableView: UITableView,
        numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 3
    }

    override func tableView(_ tableView: UITableView,
                            cellForRowAt indexPath: IndexPath)
        -> UITableViewCell {
            
        let cell = makeCell(for: tableView)
            cell.textLabel!.text = "List \(indexPath.row)"
        return cell
    }
    
    func makeCell(for tableview: UITableView) -> UITableViewCell {
        let cellIdentifier = "Cell"
        if let cell =
            tableView.dequeueReusableCell(withIdentifier: cellIdentifier) {
            return cell
        } else {
            return UITableViewCell(style: .default, reuseIdentifier: cellIdentifier)
        }
    }
    
    override func tableView(_ tableView: UITableView,
                            didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "ShowChecklist", sender: nil)
    }
}
