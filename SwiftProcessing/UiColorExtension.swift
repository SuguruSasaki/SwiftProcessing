//
//  UIColorExtention.swift
//  tabBarApp
//
//  Created by SuguruSasaki on 2015/09/02.
//  Copyright (c) 2015年 SuguruSasaki. All rights reserved.
//

import Foundation
import UIKit


extension UIColor {
    
    /**
    UIColorをRGB値で設定できる。
    @param r       赤
    @param g       緑
    @param b       青
    @param alpha   透過値
    */
    class func rgb(#r: Int, g: Int, b: Int, alpha: CGFloat) -> UIColor{
        return UIColor(red: CGFloat(r) / 255.0, green: CGFloat(g) / 255.0, blue: CGFloat(b) / 255.0, alpha: alpha)
    }
    
    /**
    
    */
    class func MainColor() -> UIColor {
        return UIColor.rgb(r: 24, g: 135, b: 208, alpha: 1.0)
    }
}
