//
//  DrawCircle.swift
//  Path
//
//  Created by SuguruSasaki on 2015/09/11.
//  Copyright (c) 2015年 SuguruSasaki. All rights reserved.
//

import Foundation
import UIKit


class DrawCircle {
    
    //-------------------------------------------------------
    // Property
    //-------------------------------------------------------
    
    
    //-------------------------------------------------------
    // Initialize
    //-------------------------------------------------------
    
    
    //-------------------------------------------------------
    // Method
    //-------------------------------------------------------
    
    /**
    
    (protocol) Draw Rectangle Shape
    
    @param rect        Instance of Rectangle
    @param strokeColor UIColor
    @param fillColor   UIColor
    
    */
    static func draw(p: Particle, radius: CGFloat, strokeColor: UIColor = UIColor.blackColor(), fillColor: UIColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0)){
        
        let circlePath : UIBezierPath = UIBezierPath( arcCenter: p.position(), radius:
            radius, startAngle: CGFloat(0), endAngle: CGFloat(M_PI * 2.0), clockwise: true)
        
        strokeColor.setStroke()
        fillColor.setFill()
        circlePath.stroke()
        circlePath.fill()
    }
    
}