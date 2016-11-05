//
//  RatingControl.swift
//  ColorMix
//
//  Created by Scott Blackwell on 2016-11-05.
//  Copyright © 2016 Scott Blackwell. All rights reserved.
//

import UIKit

class RatingControl: UIView {
// MARK: Initialization
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 44, height: 44))
        button.backgroundColor = UIColor.red
        addSubview(button)
    }
    // NOTE: intrinsicSize is now a computed property
    override public var intrinsicContentSize: CGSize {
        get {
            // Return the intrinsic content size for the stack view so it knows how to layout the button
            return CGSize (width: 240, height: 44)
        }
    }
}
