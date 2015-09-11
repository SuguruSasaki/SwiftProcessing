//
//  EnterFrameBeacon.swift
//  SwiftProcessing
//
//  Created by SuguruSasaki on 2015/09/11.
//  Copyright (c) 2015年 SuguruSasaki. All rights reserved.
//

import Foundation
import UIKit

class EnterFrameBeacon: NSObject {
    
    //-------------------------------------------------------
    // Property
    //-------------------------------------------------------
    private var _timer: NSTimer!
    private var _listeners:[EnterFrameDelegate] = []
    
    //-------------------------------------------------------
    // Initialize
    //-------------------------------------------------------
    
    
    
    //-------------------------------------------------------
    // Method
    //-------------------------------------------------------
    
    /**
    
    */
    func initialize(fps: NSTimeInterval = 60.0){
        self._timer = NSTimer.scheduledTimerWithTimeInterval(1.0 / 60, target: self, selector: "update", userInfo: nil, repeats: true)
    }
    
    /**
    add listener object
    */
    func addEventListener(listener: EnterFrameDelegate) {
        self._listeners.append(listener)
    }
    
    
    /**
    notify update
    */
    func update(){
        var max = self._listeners.count
        for var i = 0; i < max; ++i {
            var obj: EnterFrameDelegate =  self._listeners[i] as EnterFrameDelegate
            obj.update()
        }
    }
    
}