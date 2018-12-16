//
//  CustomProgressBar.swift
//  CustomProgressBar
//
//  Created by rumi on 12/16/18.
//  Copyright © 2018 rumi. All rights reserved.
//

import UIKit

@IBDesignable class CustomProgressBar: UIView {
    
    
    var greenColor: UIColor = UIColor.green
    var redColor: UIColor = UIColor.red
    var backgroundcolor: UIColor = UIColor.lightGray
    @IBInspectable var progress1: Float = 0
    @IBInspectable var progress2: Float = 0
    
    override func draw(_ rect: CGRect) {
        
        let rect = self.bounds
        let path = UIBezierPath(rect: rect)
        backgroundcolor.setFill()
        path.fill()
        
        let progress1Percent = Float(rect.width) * progress1 / 100
        let progress2Percent = Float(rect.width) * progress2 / 100 + progress1Percent
        let height = Int(rect.height)
        
        let redRect = CGRect(x: 0, y: 0, width: Int(progress2Percent) , height: height)
        let path3 = UIBezierPath(rect: redRect)
        redColor.setFill()
        path3.fill()
        
        let greenRect = CGRect(x: 0, y: 0, width: Int(progress1Percent), height: height)
        let path2 = UIBezierPath(rect: greenRect)
        greenColor.setFill()
        path2.fill()
    }
    
}
