//
//  ViewController.swift
//  SwiftProcessing
//
//  Created by SuguruSasaki on 2015/09/11.
//  Copyright (c) 2015年 SuguruSasaki. All rights reserved.
//

import UIKit

class ViewController: UIViewController, EnterFrameDelegate{

    private var _beacon: EnterFrameBeacon!
    
    private var _canvas: MyCanvas!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self._beacon = EnterFrameBeacon()
        self._beacon.initialize(fps: 60.0)
        self._beacon.addEventListener(self)
        
        let width: CGFloat = self.view.frame.width
        let height: CGFloat = self.view.frame.height
        self._canvas = MyCanvas(frame: CGRectMake(0, 0, width, height), clearColor: UIColor(red: 0, green: 0, blue: 0, alpha: 0))
        
        self.view.addSubview(self._canvas)
        self.view.backgroundColor = UIColor.blackColor()
    }

    /**

    */
    func update() {
        self._canvas.update()
        self._canvas.setNeedsDisplay()
    }
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    


}

