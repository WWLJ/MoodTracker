//
//  InterfaceController.swift
//  MoodTracker WatchKit App Extension
//
//  Created by YiTie on 15/12/23.
//  Copyright © 2015年 YiTie. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet var moodImage: WKInterfaceImage!
    
    //界面的初始化
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
    
        // Configure interface objects here.
    }

    //界面将要出现之前执行
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    //界面已经出现(watchOS2.0之后添加的)
    override func didAppear() {
        super.didAppear()
    }
    
    //界面将要消失(watchOS2.0之后添加的)
    override func willDisappear() {
        super.willDisappear()
    }
    
    
    //界面小时之后执行
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    
    var currentMood:Int = 0;
    @IBAction func moodSliderChanged(value: Float) {
        currentMood = Int(value)
        print("Current mood:\(currentMood)")
        updateMoodImage()
    }
    
    
    func updateMoodImage(){
        if currentMood < 0 || currentMood > 4{
            return
        }
        moodImage.setImageNamed("\(currentMood + 1)")
    }
    
//    @IBAction func recordMoodTapped() {
//        pushControllerWithName("MoodDetailsController", context: nil)
//        presentControllerWithName("MoodDetailsController", context: nil)
//    }
}
