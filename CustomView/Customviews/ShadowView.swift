//
//  ShadowView.swift
//  CustomView
//
//  Created by User on 2/15/20.
//  Copyright © 2020 hung. All rights reserved.
//

import UIKit

class ShadowView: UIView {

    override init(frame: CGRect) {
        super.init(frame: CGRect.zero)
        self.backgroundColor = .red
        self.layer.cornerRadius = 10
        
    }
    // khi custom UIView, set cac thuoc tinh lien quan toi layer thi hay dat trong ham draw()
    override func draw(_ rect: CGRect){
        super.draw(rect)
        
        self.layer.shadowPath = UIBezierPath(rect: CGRect(x: 0, y: 0, width: self.frame.width, height: self.frame.height)).cgPath
        self.layer.shadowOpacity = 0.5
        self.layer.shadowRadius = 10   // chua hoat dong
        self.layer.shadowOffset = CGSize(width: 10, height: 10)
        
        // maskToBound = true: ko hien thi phan layer vuot gioi han kich thuoc UIview
        self.layer.masksToBounds = false
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
