//
//  PieGraph.swift
//  CustomProgressBar
//
//  Created by rumi on 12/13/18.
//  Copyright © 2018 rumi. All rights reserved.
//

import UIKit

@IBDesignable class PieGraph: UIView {

    private struct Constants {
        static let numberOfGlasses = 8
        static let lineWidth: CGFloat = 5.0
        static let arcWidth: CGFloat = 76 / 2
        
        static var halfOfLineWidth: CGFloat {
            return lineWidth / 2
        }
    }
    
     var outlineColor: UIColor = UIColor.blue
    var counterColor: UIColor = UIColor.orange
    @IBInspectable var progress = 0
    
    override func draw(_ rect: CGRect) {
        // 1
        let center = CGPoint(x: bounds.width / 2, y: bounds.height / 2)
        
        // 2
        let radius: CGFloat = max(bounds.width, bounds.height)
        
        // 3
        let startAngle: CGFloat = .pi * 3 / 2
        let endAngle: CGFloat = .pi / 4
        
        
        let startAngle2: CGFloat = .pi / 4
        let endAngle2: CGFloat = .pi * 3 / 2
        
        // 4
        let path = UIBezierPath(arcCenter: center,
                                radius: radius/2 - Constants.arcWidth/2,
                                startAngle: startAngle,
                                endAngle: endAngle,
                                clockwise: true)
        
        let path2 = UIBezierPath(arcCenter: center,
                                radius: radius/2 - Constants.arcWidth/2,
                                startAngle: startAngle2,
                                endAngle: endAngle2,
                                clockwise: true)
        
        // 5
        path.lineWidth = Constants.arcWidth
        counterColor.setStroke()
        path.stroke()
        
        path2.lineWidth = Constants.arcWidth
        outlineColor.setStroke()
        path2.stroke()
    }
}
