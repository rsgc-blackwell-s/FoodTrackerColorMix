//
//  Meal.swift
//  ColorMix
//
//  Created by Scott Blackwell on 2016-11-06.
//  Copyright © 2016 Scott Blackwell. All rights reserved.
//

import UIKit

public class Meal {
    // MARK: Properties
    var name: String
    var photo: UIImage?
    var rating: Int
    
    // MARK: Initialization
    
    public init?(name: String, photo: UIImage?, rating: Int) {
        // Initialize stored properties.
        self.name = name
        self.photo = photo
        self.rating = rating
        
        // Initialization should fail if there is no name or if the rating is negative.
        if name.isEmpty || rating < 0 {
            return nil
        }
    }
}

