//
//  DrawRect.swift
//  Path
//
//  Created by SuguruSasaki on 2015/09/11.
//  Copyright (c) 2015年 SuguruSasaki. All rights reserved.
//

import Foundation
import UIKit


class DrawRect {
    
    
    //-------------------------------------------------------
    // Method
    //-------------------------------------------------------
    
    /**
    
    (protocol) Draw Rectangle Shape
    
    @param rect        Instance of Rectangle
    @param strokeColor UIColor
    @param fillColor   UIColor
    
    */
    static func draw(p: Particle, width:CGFloat, height:CGFloat, strokeColor: UIColor = UIColor.blackColor(),
        fillColor: UIColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0) ){
            
            let path: UIBezierPath = UIBezierPath()
            var oneSideWidth = width * 0.5
            var oneSideHeight = height * 0.5
            
            var x: CGFloat = p.position().x
            var y: CGFloat = p.position().y
            
            var x1: CGFloat = x - oneSideWidth
            var y1: CGFloat = y - oneSideHeight
            
            var x2: CGFloat = x + oneSideWidth
            var y2: CGFloat = y - oneSideHeight
            
            var x3: CGFloat = x + oneSideWidth
            var y3: CGFloat = y + oneSideHeight
            
            var x4: CGFloat = x - oneSideWidth
            var y4: CGFloat = y + oneSideHeight
            
            path.moveToPoint(CGPointMake(x1, y1))
            path.addLineToPoint(CGPointMake(x2, y2))
            path.addLineToPoint(CGPointMake(x3, y3))
            path.addLineToPoint(CGPointMake(x4, y4))
            path.addLineToPoint(CGPointMake(x1, y1))
            
            strokeColor.setStroke()
            fillColor.setFill()
            path.lineWidth = 1
            path.stroke()
            path.fill()
    }
    
}