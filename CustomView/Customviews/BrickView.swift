//
//  BrickView.swift
//  CustomView
//
//  Created by User on 2/15/20.
//  Copyright © 2020 hung. All rights reserved.
//

import UIKit

class BrickView: UIView {
    var banKinh: CGFloat = 0.0
    var fillColor: UIColor!
    convenience init(startPoint: CGPoint, radius: CGFloat, color: UIColor) {
        self.init(frame: CGRect(x: startPoint.x - radius, y: startPoint.y - radius, width: radius*2, height: radius*2))
        
        self.banKinh = radius
        self.fillColor = color
    }
    
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        
        let squareLayer = CAShapeLayer()
        squareLayer.path = UIBezierPath(roundedRect: self.bounds, cornerRadius: 0).cgPath
        
        squareLayer.fillColor = fillColor.cgColor
        self.layer.addSublayer(squareLayer)
        
        let L: CGFloat = banKinh*2
        let a: CGFloat = L/10
        
        let topLayer = CAShapeLayer()
        let path1 = UIBezierPath()
        
        path1.move(to: CGPoint(x: 0, y: 0))
        path1.addLine(to: CGPoint(x: L, y: 0))
        path1.addLine(to: CGPoint(x: L-a , y: a))
        path1.addLine(to: CGPoint(x: a, y: a))
        
        topLayer.path = path1.cgPath
        squareLayer.insertSublayer(topLayer, at: 0)
        topLayer.fillColor = UIColor.white.cgColor
        topLayer.opacity = 0.4
        
//        brickView.layer.addSublayer(squareLayer)
        
        let leftLayer = CAShapeLayer()
        let path2 = UIBezierPath()

        path2.move(to: CGPoint(x: 0, y: 0))
        path2.addLine(to: CGPoint(x: 0, y: L))
        path2.addLine(to: CGPoint(x: a, y: L-a))
        path2.addLine(to: CGPoint(x: a, y: a))

        leftLayer.path = path2.cgPath
        squareLayer.insertSublayer(leftLayer, at: 0)
        leftLayer.fillColor = UIColor.white.cgColor
        leftLayer.opacity = 0.3
        
        let bottomLayer = CAShapeLayer()
        let path3 = UIBezierPath()

        path3.move(to: CGPoint(x: L, y: L))
        path3.addLine(to: CGPoint(x: 0, y: L))
        path3.addLine(to: CGPoint(x: a, y: L-a))
        path3.addLine(to: CGPoint(x: L-a, y: L-a))

        bottomLayer.path = path3.cgPath
        squareLayer.insertSublayer(bottomLayer, at: 0)
        bottomLayer.fillColor = UIColor.white.cgColor
        bottomLayer.opacity = 0.4
        
        let rightLayer = CAShapeLayer()
        let path4 = UIBezierPath()

        path4.move(to: CGPoint(x: L, y: L))
        path4.addLine(to: CGPoint(x: L, y: 0))
        path4.addLine(to: CGPoint(x: L-a, y: a))
        path4.addLine(to: CGPoint(x: L-a, y: L-a))

        rightLayer.path = path4.cgPath
        squareLayer.insertSublayer(rightLayer, at: 0)
        rightLayer.fillColor = UIColor.black.cgColor
        rightLayer.opacity = 0.3
        
        
        
    }


}
