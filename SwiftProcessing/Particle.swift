//
//  Particle.swift
//  Path
//
//  Created by SuguruSasaki on 2015/09/11.
//  Copyright (c) 2015年 SuguruSasaki. All rights reserved.
//

import Foundation
import UIKit


class Particle {
    
    //-------------------------------------------------------
    // Property
    //-------------------------------------------------------
    private var _position: CGPoint!         // Center Point
    private var _velocity: CGPoint!         // Velocity
    
    //-------------------------------------------------------
    // Initialize
    //-------------------------------------------------------
    
    /**
    Default initialize
    */
    init(center: CGPoint = CGPointMake(0.0, 0.0) ){
        self._position = center
        self._velocity = CGPoint(x: 0.0, y: 0.0)
    }
    
    //-------------------------------------------------------
    // Method
    //-------------------------------------------------------
    
    /**
    
    */
    func update() {
        self._position.x += self._velocity.x
        self._position.y += self._velocity.y
    }
    
    
    /**
    Get particle position
    */
    func position() -> CGPoint {
        return self._position
    }
    
    /**
    Get particle velocity
    */
    func velocity() -> CGPoint {
        return self._velocity
    }
    
    /**
    change new center position
    */
    func addPosition(x: CGFloat, y: CGFloat) {
        self._position.x = self._position.x + x
        self._position.y = self._position.y + y
    }
    
    /**
    Set particle position
    */
    func setPosition(x: CGFloat, y: CGFloat ) {
        self._position.x = x
        self._position.y = y
    }
    
    
    /**
    Set particle velocity
    */
    func setVelocity(x: CGFloat, y: CGFloat) {
        self._velocity.x = x
        self._velocity.y = y
    }
    
    
    
}