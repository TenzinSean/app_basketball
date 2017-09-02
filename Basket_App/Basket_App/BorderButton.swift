//
//  BorderButton.swift
//  Basket_App
//
//  Created by Tenzin Sean on 9/2/17.
//  Copyright © 2017 Tenzin Sean. All rights reserved.
//

import UIKit

class BorderButton: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        layer.borderWidth = 1.0
        layer.borderColor = UIColor.white.cgColor
        
    }
    
}
