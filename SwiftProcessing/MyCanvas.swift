//
//  MyCanvas.swift
//  SwiftProcessing
//
//  Created by SuguruSasaki on 2015/09/11.
//  Copyright (c) 2015年 SuguruSasaki. All rights reserved.
//

import Foundation
import UIKit


class MyCanvas: CanvasApp {
    
    //-------------------------------------------------------
    // Property
    //-------------------------------------------------------
    private var _particles: [Particle] = []
    
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
    custom initialize
    */
    override init(frame: CGRect, clearColor: UIColor) {
        super.init(frame: frame, clearColor: clearColor)
        
        
        for var i = 0; i < 200; ++i {
            var px: CGFloat = Math.randomBetweenNumbers(0.0, secondNum: self.frame.width)
            var py: CGFloat = Math.randomBetweenNumbers(0.0, secondNum: self.frame.height)
            var p: Particle = Particle(center: CGPointMake(px, py))
            
            var vx: CGFloat = Math.randomBetweenNumbers(-5.0, secondNum: 5.0)
            var vy: CGFloat = Math.randomBetweenNumbers(-5.0, secondNum: 5.0)
            p.setVelocity(vx, y: vy)
            self._particles.append(p)
        }
    }
    
    
    //-------------------------------------------------------
    // Method
    //-------------------------------------------------------
    
    /**
    
    */
    override func update() {
        var max = self._particles.count
        for var i = 0; i < max; ++i {
            var p: Particle = self._particles[i] as Particle
            p.update()
            
            if p.position().x < 0 {
                p.setVelocity(-p.velocity().x, y: p.velocity().y)
                p.setPosition(0, y: p.position().y)
            }
            else if p.position().x > self.frame.width  {
                p.setVelocity(-p.velocity().x, y: p.velocity().y)
                p.setPosition( self.frame.width, y: p.position().y)
            }
            
            if p.position().y < 0 {
                p.setVelocity(p.velocity().x, y: -p.velocity().y)
                p.setPosition(p.position().x, y: 0)
            }
            else if p.position().y > self.frame.height {
                p.setVelocity(p.velocity().x, y: -p.velocity().y)
                p.setPosition(p.position().x, y: self.frame.height)
            }
            
        }

    }
    
    /**
    
    */
    override func draw() {
        var max = self._particles.count
        for var i = 0; i < max; ++i {
            var p: Particle = self._particles[i] as Particle
            DrawCircle.draw(p, radius: CGFloat(3.0), strokeColor: UIColor.redColor(), fillColor: UIColor.redColor())
            //DrawRect.draw(p, width: 10, height: 10, strokeColor: UIColor.blackColor(), fillColor: UIColor.blackColor())
        }
    }
    
}