//
//  CanvasApp.swift
//  SwiftProcessing
//
//  Created by SuguruSasaki on 2015/09/11.
//  Copyright (c) 2015年 SuguruSasaki. All rights reserved.
//

import Foundation
import UIKit

class CanvasApp: UIView {
    
    //-------------------------------------------------------
    // Property
    //-------------------------------------------------------
    private var _clearColor:UIColor!
    
    //-------------------------------------------------------
    // Initialize
    //-------------------------------------------------------
    /**
    required init
    */
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    /**
    custom init
    @param clearColor   UIColor
    */
    init(frame: CGRect, clearColor:UIColor) {
        super.init(frame: frame)
        self._clearColor = clearColor
    }
    
    //-------------------------------------------------------
    // Method
    //-------------------------------------------------------
    
    /**
    override drawRect 
    */
    override func drawRect(rect: CGRect) {
        self.backgroundColor = self._clearColor
        self.opaque = true
        self.draw()
    }
    
    /**
    update
    */
    func update() {
        // override subclass
    }
    
    /**
    draw
    */
    func draw() {
        // override subclass
    }
}
