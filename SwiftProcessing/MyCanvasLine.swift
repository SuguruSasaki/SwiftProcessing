//
//  MyCanvasLine.swift
//  SwiftProcessing
//
//  Created by SuguruSasaki on 2015/09/11.
//  Copyright (c) 2015年 SuguruSasaki. All rights reserved.
//

import Foundation
import UIKit

class MyCanvasLine: CanvasApp {
    
    //-------------------------------------------------------
    // Property
    //-------------------------------------------------------
    private var _particles: [Particle] = []
    private var _target: CGPoint!
    private var _radian: CGFloat = CGFloat(M_PI)
    
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
        for var i = 0; i < 10; ++i {
            var p: Particle = Particle(center: CGPointMake(self.frame.midX, self.frame.midY))
            var vx: CGFloat = Math.randomBetweenNumbers(0.0, secondNum: 0.0)
            var vy: CGFloat = Math.randomBetweenNumbers(0.0, secondNum: 0.0)
            p.setVelocity(vx, y: vy)
            self._particles.append(p)
        }
        
        //
        self._target = CGPoint(x: 0, y: self.frame.midY)
    }
    
    //-------------------------------------------------------
    // Method
    //-------------------------------------------------------
    
    /**
    calc some action
    */
    override func update(){
        
        //self.oscillation()
        
        var dx:CGFloat = self._target.x - self._particles[0].position().x
        var dy:CGFloat = self._target.y - self._particles[0].position().y
        
        self._particles[0].setVelocity(dx * 0.1, y: dy * 0.1)
        self._particles[0].update()
        
        var max = self._particles.count
        for var i = 1; i < max; ++i {
            var old = self._particles[i - 1] as Particle
            var dx: CGFloat = old.position().x - self._particles[i].position().x
            var dy: CGFloat = old.position().y - self._particles[i].position().y
            self._particles[i].setVelocity(dx * 0.1 + 5, y: dy * 0.05)
            self._particles[i].update()
        }
        
    }
    
    /**
    Draw canvas
    */
    override func draw(){
        var max = self._particles.count - 1
        var path: UIBezierPath = UIBezierPath()
        path.moveToPoint(self._particles[0].position())
        for var i = 1; i < max; ++i {
            var p2: Particle = self._particles[i] as Particle
            var p3: Particle = self._particles[i + 1] as Particle
            var cx2: CGFloat = (p2.position().x + p3.position().x) / 2
            var cy2: CGFloat = (p2.position().y + p3.position().y) / 2
            path.addQuadCurveToPoint(CGPointMake(cx2, cy2), controlPoint: p2.position())
        }
        path.addLineToPoint(CGPointMake(self.frame.maxX, self.frame.maxY))
        path.addLineToPoint(CGPointMake(0, self.frame.maxY))
        
        
        UIColor.rgb(r: 22, g: 130, b: 184, alpha: 1.0).setFill()
        path.lineWidth = 1
        path.stroke()
        path.fill()
    }
    
    
    /**
    Touch Begin
    */
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        let touch = touches.first as! UITouch
        var pos = touch.locationInView(self) as CGPoint
        self._target = pos
    }
    
    /**
    sin motion
    */
    func oscillation(){
        var py: CGFloat = sin(self._radian) * 30 + self.frame.midY
        self._target.y = py
        self._radian += 0.03
        self._radian = self._radian % CGFloat( M_PI * 2 )
    }
    
    
    
    
    
}