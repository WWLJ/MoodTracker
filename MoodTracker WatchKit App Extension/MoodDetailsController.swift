//
//  MoodDetailsController.swift
//  MoodTracker
//
//  Created by YiTie on 16/1/29.
//  Copyright © 2016年 YiTie. All rights reserved.
//

import Foundation

import WatchKit

class MoodDetailsController: WKInterfaceController {
    
    @IBOutlet var moodImage: WKInterfaceImage!
    @IBOutlet var moodNameLabel: WKInterfaceLabel!
    @IBOutlet var moodDescriptionLabel: WKInterfaceLabel!
    @IBOutlet var moodAdviceLabel: WKInterfaceLabel!
    
    
    let moodNames = ["OK", "Not Bad", "Hmmm", "Anger", "RAWR"]
    var currentMood = 0
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        if let moodContextData = context as? MoodContextData {
            currentMood = moodContextData.moodIndex
        }
    }
    
    override func willActivate() {
        moodImage.setImageNamed("\(currentMood)")
        let moodName = moodNames[currentMood]
        moodNameLabel.setText(moodName)
        moodDescriptionLabel.setText("You are feeling SO \(moodName),eh?")
    }
    
}