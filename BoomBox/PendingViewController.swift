//
//  PendingViewController.swift
//  BoomBox
//
//  Created by Edrease Peshtaz on 1/10/16.
//  Copyright © 2016 warriors. All rights reserved.
//

import UIKit

class PendingViewController: UIViewController, UITableViewDataSource {

  @IBOutlet weak var tableView: UITableView!
  
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
  
  func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return 3
  }
  
  
  func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCellWithIdentifier("Cell") as UITableViewCell!
    cell.textLabel?.text = "Pending listing"
    return cell
  }

 
}
