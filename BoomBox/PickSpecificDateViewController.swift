//
//  PickSpecificDateViewController.swift
//  BoomBox
//
//  Created by Edrease Peshtaz on 1/17/16.
//  Copyright © 2016 warriors. All rights reserved.
//

import UIKit
import CalendarView
import SwiftMoment

class PickSpecificDateViewController: UIViewController {
  
  
  @IBOutlet weak var calendarLabel: UILabel!
  
  
    override func viewDidLoad() {
        title = "Pick starting date"
        super.viewDidLoad()
        let calendar = CalendarView(frame: CGRectMake(0, 100, CGRectGetWidth(view.frame), 320))
        let nextButton = UIButton(frame: CGRectMake(0, 500, CGRectGetWidth(view.frame), 100))
        nextButton.setTitle("Set end date", forState: UIControlState.Normal)
        nextButton.backgroundColor = UIColor.blackColor()
        nextButton.titleLabel?.text = "Set end date"
        nextButton.titleLabel?.textColor = UIColor.whiteColor()
        nextButton.titleLabel?.textAlignment = .Center
        view.addSubview(nextButton)
        view.addSubview(calendar)
        calendar.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
  
}

extension PickSpecificDateViewController: CalendarViewDelegate {
  
  func calendarDidSelectDate(date: Moment) {
    calendarLabel.text = date.format("MMMM d, yyyy")
  }
  
  func calendarDidPageToDate(date: Moment) {
    calendarLabel.text = date.format("MMMM, yyyy")
  }
}


