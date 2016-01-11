//
//  SpaceDetailViewController.swift
//  BoomBox
//
//  Created by Matthew McClure on 1/10/16.
//  Copyright © 2016 warriors. All rights reserved.
//

import UIKit

class SpaceDetailViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    var passedSpace: PracticeSpace!
    
    @IBOutlet weak var spaceTitleLabel: UILabel!
    @IBOutlet weak var hostNameLabel: UILabel!
    @IBOutlet weak var otherHostInfoLabel: UILabel!
    
    @IBAction func contactThisHostButtonPressed(sender: UIButton) {
        //trigger messaging system here
        print("contact button pressed")
    }
    
    @IBAction func requestToBookButtonPressed(sender: UIButton) {
        //trigger booking system here
        print("request to book pressed")
    }
    
    
    @IBOutlet weak var spaceCollectionView: UICollectionView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
      //  NSLog("passed space, %@", self.passedSpace.imageArray.count)
        
        self.spaceCollectionView.dataSource = self
        self.spaceCollectionView.delegate = self
        
        self.spaceTitleLabel.text = self.passedSpace.title
        self.hostNameLabel.text = "\(self.passedSpace.owner.firstName) \(self.passedSpace.owner.lastName)"

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - UICollectionViewDataSource protocol
    
    // tell the collection view how many cells to make
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.passedSpace.imageArray.count
    }
    
    // make a cell for each cell index path
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        
        // get a reference to our storyboard cell
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("photoCell", forIndexPath: indexPath) as! SpacePhotoCollectionViewCell
        
        // Use the outlet in our custom class to get a reference to the UILabel in the cell
//       // cell. = self.items[indexPath.item]
        cell.backgroundColor = UIColor.yellowColor() // make cell more visible in our example project
        cell.photoCellImageView.image = self.passedSpace.imageArray[indexPath.row]
        
        return cell
    }
    
    // MARK: - UICollectionViewDelegate protocol
    
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        // handle tap events
        print("You selected cell #\(indexPath.item)!")
    }

    //Use for size
    func collectionView(collectionView: UICollectionView,
        layout collectionViewLayout: UICollectionViewLayout,
        sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
            return CGSize(width: self.view.frame.size.width, height: self.view.frame.size.height/2.5)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
