//
//  BrickViewController.swift
//  CustomView
//
//  Created by User on 2/15/20.
//  Copyright © 2020 hung. All rights reserved.
//

import UIKit

class BrickViewController: UIViewController {
    
    var brickView: BrickView!

    override func viewDidLoad() {
        super.viewDidLoad()
     draw0()
        
    }
    
    func draw0(){
        for i in 0...3{
            for j in 0...3{
                
                //hinh1-hang1
                drawBrick(row: 2, col: 3, radius: 20, color: .red)
                drawBrick(row: 2, col: 2, radius: 20, color: .red)
                drawBrick(row: 3, col: 2, radius: 20, color: .red)
                drawBrick(row: 3, col: 1, radius: 20, color: .red)
                //hinh2-hang1
                drawBrick(row: 2, col: 5, radius: 20, color: .red)
                drawBrick(row: 2, col: 6, radius: 20, color: .red)
                drawBrick(row: 3, col: 6, radius: 20, color: .red)
                drawBrick(row: 3, col: 7, radius: 20, color: .red)
                //hinh1-hang2
                drawBrick(row: 5, col: 2, radius: 20, color: .red)
                drawBrick(row: 6, col: 2, radius: 20, color: .red)
                drawBrick(row: 6, col: 1, radius: 20, color: .red)
                drawBrick(row: 7, col: 1, radius: 20, color: .red)
                //hinh2-hang2
                drawBrick(row: 5, col: 4, radius: 20, color: .red)
                drawBrick(row: 6, col: 4, radius: 20, color: .red)
                drawBrick(row: 6, col: 5, radius: 20, color: .red)
                drawBrick(row: 7, col: 5, radius: 20, color: .red)
                //hinh3-hang2
                drawBrick(row: 5, col: 7, radius: 20, color: .red)
                drawBrick(row: 6, col: 7, radius: 20, color: .red)
                drawBrick(row: 7, col: 7, radius: 20, color: .red)
                drawBrick(row: 7, col: 8, radius: 20, color: .red)
                //hinh1-hang3
                drawBrick(row: 9, col: 2, radius: 20, color: .red)
                drawBrick(row: 10, col: 2, radius: 20, color: .red)
                drawBrick(row: 11, col: 2, radius: 20, color: .red)
                drawBrick(row: 9, col: 3, radius: 20, color: .red)
                drawBrick(row: 11, col: 1, radius: 20, color: .red)
                //hinh2-hang3
                drawBrick(row: 9, col: 5, radius: 20, color: .red)
                drawBrick(row: 10, col: 6, radius: 20, color: .red)
                drawBrick(row: 11, col: 6, radius: 20, color: .red)
                drawBrick(row: 9, col: 6, radius: 20, color: .red)
                drawBrick(row: 11, col: 7, radius: 20, color: .red)
                //hinh1-hang3
                drawBrick(row: 13, col: 1, radius: 20, color: .red)
                drawBrick(row: 13, col: 2, radius: 20, color: .red)
                drawBrick(row: 13, col: 3, radius: 20, color: .red)
                drawBrick(row: 14, col: 2, radius: 20, color: .red)
                drawBrick(row: 15, col: 2, radius: 20, color: .red)
                //hinh2-hang3
                drawBrick(row: 13, col: 5, radius: 20, color: .red)
                drawBrick(row: 14, col: 5, radius: 20, color: .red)
                drawBrick(row: 15, col: 5, radius: 20, color: .red)
                drawBrick(row: 14, col: 6, radius: 20, color: .red)
                //hinh3-hang3
                drawBrick(row: 13, col: 9, radius: 20, color: .red)
                drawBrick(row: 14, col:9, radius: 20, color: .red)
                drawBrick(row: 15, col:9, radius: 20, color: .red)
                drawBrick(row: 14, col: 8, radius: 20, color: .red)
                
            }
        }
    }
    
    func drawBrick(row: Int, col: Int, radius: CGFloat, color: UIColor){
        let d = radius*2
        let brick = BrickView(startPoint: CGPoint(x: d*CGFloat(col), y: d*CGFloat(row)), radius: radius, color: color)
        view.addSubview(brick)
    }

    

}
