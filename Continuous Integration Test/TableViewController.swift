//
//  ViewController.swift
//  Continuous Integration Test
//
//  Created by Groom, Stephen on 21/05/2015.
//  Copyright (c) 2015 Sage. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {

        if (segue.identifier == "Detail") {
            if let destination = segue.destinationViewController as? DetailViewController {
                if let dataSource = tableView.dataSource as? DataSource {
                    if let cell = sender as? UITableViewCell {
                        destination.item = dataSource.itemAtIndexPath(tableView.indexPathForCell(cell)!)
                    }
                }
            }
        }
    }
}

