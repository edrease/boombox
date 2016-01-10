//
//  BrowseCityTableViewController.swift
//  BoomBox
//
//  Created by Matthew McClure on 1/10/16.
//  Copyright © 2016 warriors. All rights reserved.
//

import UIKit


class BrowseCityTableViewController: UITableViewController {
    
    var spaceToPass : PracticeSpace!
    
    var spacesInThisCity: [PracticeSpace] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var sampleImageArray = [UIImage]()
        var sampleImageArray2 = [UIImage]()
        var sampleImageArray3 = [UIImage]()
        var sampleImageArray4 = [UIImage]()
        var sampleImageArray5 = [UIImage]()



        
        let image1 : UIImage = UIImage(named:"Rehearsing_02_magnet")!
        let image2 : UIImage = UIImage(named:"soundhouse_attichigh-res")!
        let image3 : UIImage = UIImage(named:"room-with-window-1")!
        let image4 : UIImage = UIImage(named: "DSC_1172aa")!
        let image5 : UIImage = UIImage(named: "rehearsal-space")!
        
        sampleImageArray.append(image1)
        sampleImageArray.append(image2)
        sampleImageArray.append(image3)
        
        sampleImageArray2.append(image2)
        sampleImageArray2.append(image3)
        sampleImageArray2.append(image4)
        
        sampleImageArray3.append(image3)
        sampleImageArray3.append(image4)
        sampleImageArray3.append(image5)

        sampleImageArray4.append(image4)
        sampleImageArray4.append(image5)
        sampleImageArray4.append(image1)
        
        sampleImageArray5.append(image5)
        sampleImageArray5.append(image1)
        sampleImageArray5.append(image2)

        
        let owner1 = SpaceOwner(firstName: "Todd", lastName: "Rundgren", email: "toddrund@gmail.com")
        
        let space1 = PracticeSpace(owner: owner1, title: "Room with a View", streetAddress: "4553 Johnson Road", city: "Seattle", stateAbbrev: "WA", dailyRate: 88.00, spaceDescription: "Large, sunny room with ample power outlets. Add more description here. Add more description here. Add more description here. Add more description here. Add more description here.", imageArray: sampleImageArray5)
        
        spacesInThisCity.append(space1)
        
        let owner2 = SpaceOwner(firstName: "Aimee", lastName: "Mann", email: "amann@gmail.com")
        
        let space2 = PracticeSpace(owner: owner2, title: "Studio in Ballard", streetAddress: "4553 Hyatt St", city: "Seattle", stateAbbrev: "WA", dailyRate: 120.00, spaceDescription: "This is a practice space. Add more description here. Add more description here. Add more description here. Add more description here. Add more description here.", imageArray: sampleImageArray4)
        
        spacesInThisCity.append(space2)

        let owner3 = SpaceOwner(firstName: "Al", lastName: "Pacino", email: "apac@gmail.com")
        
        let space3 = PracticeSpace(owner: owner3, title: "Ed's Mom's House", streetAddress: "2889 Yomuthas Ave", city: "West Seattle", stateAbbrev: "WA", dailyRate: 60.00, spaceDescription: "This is a practice space. Add more description here. Add more description here. Add more description here. Add more description here. Add more description here.", imageArray: sampleImageArray3)
        
        spacesInThisCity.append(space3)
        
        let owner4 = SpaceOwner(firstName: "Rebecca", lastName: "Haysworth", email: "rebhaysw@gmail.com")
        
        let space4 = PracticeSpace(owner: owner4, title: "Professional Recording Studio", streetAddress: "122 Electric Ave", city: "Seattle", stateAbbrev: "WA", dailyRate: 66.00, spaceDescription: "This is a practice space. Add more description here. Add more description here. Add more description here. Add more description here. Add more description here.", imageArray: sampleImageArray2)
        
        spacesInThisCity.append(space4)
        
        let space5 = PracticeSpace(owner: owner3, title: "Really Nice Space", streetAddress: "889 15th St", city: "Seattle", stateAbbrev: "WA", dailyRate: 76.00, spaceDescription: "This is a practice space. Add more description here. Add more description here. Add more description here. Add more description here. Add more description here.", imageArray: sampleImageArray)
        
        spacesInThisCity.append(space5)
        
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

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return spacesInThisCity.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> BrowseSpacesTableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("spaceCell", forIndexPath: indexPath) as! BrowseSpacesTableViewCell

        // Configure the cell...
        cell.layoutMargins = UIEdgeInsetsZero
        
        let thisSpace = spacesInThisCity[indexPath.row]
        cell.spaceImageView!.image = thisSpace.imageArray[0]
//        cell.imageView!.contentMode = .ScaleAspectFill
       // cell.spacePriceLabel = thisSpace.dailyRate
        let priceIntValue = Int(thisSpace.dailyRate)

        let priceLabelText = "$\(priceIntValue)"
        cell.spacePriceLabel.text = priceLabelText
        
        return cell
    }


    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        spaceToPass = spacesInThisCity[indexPath.row]
        self.performSegueWithIdentifier("showSpaceDetail", sender: nil)
    }

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "Details" {
            let destinationVC = segue.destinationViewController as! SpaceDetailViewController
            
            destinationVC.passedSpace = spaceToPass
        }
    }
    

}
