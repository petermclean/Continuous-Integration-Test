//
//  DetailViewController.swift
//  Continuous Integration Test
//
//  Created by Groom, Stephen on 21/05/2015.
//  Copyright (c) 2015 Sage. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    var item: Item?
   
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    override func viewWillAppear(animated: Bool) {
        
        super.viewWillAppear(animated)
        
        let title = item?.title ?? ""
        let description = item?.description ?? ""
        
        titleLabel.text = title
        descriptionLabel.text = description
    }
}
