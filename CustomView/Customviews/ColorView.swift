//
//  ColorView.swift
//  CustomView
//
//  Created by User on 2/15/20.
//  Copyright © 2020 hung. All rights reserved.
//

import UIKit

class ColorView: UIView {
    // su dung keywork convenience truoc init de ben trong ham init nay co the goi den 1 ham init khac
    convenience init(color: UIColor) {
        self.init(frame: .zero)
        self.backgroundColor = color
    }

    
}
