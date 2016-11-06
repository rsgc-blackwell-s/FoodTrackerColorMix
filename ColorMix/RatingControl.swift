//
//  RatingControl.swift
//  ColorMix
//
//  Created by Scott Blackwell on 2016-11-05.
//  Copyright © 2016 Scott Blackwell. All rights reserved.
//

import UIKit

class RatingControl: UIView {
    // MARK: Properties
    var rating = 0
    var ratingButtons = [UIButton]()
    let spacing = 5
    let starCount = 5
    
    // MARK: Initialization
    override func layoutSubviews(){
        // Set the button's width and height to a square the size of the frame's height.
        let buttonSize = Int(frame.size.height)
        var buttonFrame = CGRect(x: 0, y: 0, width: buttonSize, height: buttonSize)
        
        // Offset each button's origin by the length of the button plus spacing.
        for (index, button) in ratingButtons.enumerated(){
            buttonFrame.origin.x = CGFloat(index * (buttonSize + spacing))
            button.frame = buttonFrame
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        for _ in 0..<starCount {
        let button = UIButton()
        button.backgroundColor = UIColor.red
        button.addTarget(self, action: #selector(RatingControl.ratingButtonTapped(button:)), for: .touchDown)
        ratingButtons += [button]
        addSubview(button)
        }
    }
    
    // NOTE: intrinsicSize is now a computed property
    override public var intrinsicContentSize: CGSize {
            let buttonSize = Int(frame.size.height)
            let width = (buttonSize * starCount) = (spacing * (starCount - 1))
            // Return the intrinsic content size for the stack view so it knows how to layout the button
            return CGSize (width: width, height: buttonSize)
    }
    
    // MARK: Button Action
    func ratingButtonTapped (button: UIButton){
        print ("Button pressed 👍")
    }
}
