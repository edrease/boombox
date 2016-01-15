//
//  PendingListingViewController.swift
//  BoomBox
//
//  Created by Edrease Peshtaz on 1/14/16.
//  Copyright © 2016 warriors. All rights reserved.
//

import UIKit

class PendingListingViewController: UIViewController, UITableViewDataSource {

  @IBOutlet weak var tableView: UITableView!
  
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
  func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return 3
  }
  
  func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as UITableViewCell!
    cell.textLabel?.text = "Pending listing"
    return cell
  }

}
