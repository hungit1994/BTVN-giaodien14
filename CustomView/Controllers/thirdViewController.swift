//
//  thirdViewController.swift
//  CustomView
//
//  Created by User on 2/15/20.
//  Copyright © 2020 hung. All rights reserved.
//

import UIKit

class thirdViewController: UIViewController {
    
    var view1: CircleView!
    var view2: CircleView!
    var view3: CircleView!

    override func viewDidLoad() {
        super.viewDidLoad()

        view1 = CircleView(center: CGPoint(x: view.center.x, y: view.center.y), radius: 30, color: UIColor.red)
        view.addSubview(view1)
        
        view2 = CircleView(center: CGPoint(x: view.center.x, y: view.center.y), radius: 30, color: UIColor.red)
        view.addSubview(view2)
        
        view3 = CircleView(center: CGPoint(x: view.center.x, y: view.center.y), radius: 30, color: UIColor.red)
        view.addSubview(view3)
    }
    

    
    

}
