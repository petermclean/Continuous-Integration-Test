//
//  DataSource.swift
//  Continuous Integration Test
//
//  Created by Groom, Stephen on 21/05/2015.
//  Copyright (c) 2015 Sage. All rights reserved.
//

import UIKit

struct Item {
    let title: String
    let description: String
}

class DataSource: NSObject, UITableViewDataSource {
    
    let objects = [
        Item(title: "First", description: "Bacon ipsum dolor amet tenderloin ball tip capicola, kielbasa sirloin sausage turkey frankfurter flank ground round. Ham capicola frankfurter, fatback cow shankle shank. Ball tip boudin flank jowl swine, kevin picanha ground round alcatra pastrami t-bone. Ball tip shoulder pancetta salami meatball kielbasa chuck shank pork belly ground round picanha strip steak."),
        Item(title: "Second", description: "Bacon ipsum dolor amet capicola pig pastrami short loin pancetta frankfurter swine biltong meatloaf ground round bresaola landjaeger cupim. Shankle pork loin pancetta beef ribs ham hock, capicola cow tri-tip drumstick. Filet mignon tail spare ribs, turkey t-bone shank rump beef beef ribs meatloaf ribeye leberkas tri-tip turducken. Tri-tip hamburger doner cupim venison filet mignon. Cow frankfurter pork chop short ribs prosciutto landjaeger, kevin pig andouille jerky cupim. Shankle capicola tail spare ribs, flank kielbasa andouille salami sirloin."),
        Item(title: "Third", description: "Bacon ipsum dolor amet sirloin boudin exercitation mollit deserunt. Pancetta cow meatball qui, quis ham hock labore strip steak. Minim veniam capicola frankfurter, corned beef landjaeger sed porchetta ball tip id jowl picanha ribeye pig boudin. Brisket elit minim nisi, pork belly eu turducken ground round cillum ut in. Turducken pork fatback cow.")
    ]
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return objects.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {

        let cell = tableView.dequeueReusableCellWithIdentifier("Cell") as! UITableViewCell
        let object = objects[indexPath.row]
        
        cell.textLabel?.text = object.title
        cell.detailTextLabel?.text = object.description
        
        return cell
    }
    
    func itemAtIndexPath(indexPath: NSIndexPath) -> Item? {
        
        if (indexPath.section > 1 || indexPath.row > objects.count) { return nil }
        
        return objects[indexPath.row]
    }
}
