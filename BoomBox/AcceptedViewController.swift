//
//  AcceptedViewController.swift
//  BoomBox
//
//  Created by Edrease Peshtaz on 1/10/16.
//  Copyright © 2016 warriors. All rights reserved.
//

import UIKit

class AcceptedViewController: UIViewController, UITableViewDataSource {

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
    let cell = tableView.dequeueReusableCellWithIdentifier("Cell") as UITableViewCell!
    cell.textLabel?.text = "Accepted listing"
    return cell
  }
  
}
