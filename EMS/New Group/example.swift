//
//  example.swift
//  EMS
//
//  Created by COE-009 on 06/09/19.
//  Copyright © 2019 COE-009. All rights reserved.
//

import UIKit

class example: UITextField{
    func SetBottomBorder()
    {
    //create layer
    let bottomLine = CALayer()
    
    //
    bottomLine.frame = CGRect.init(x: 0.0, y: self.frame.height-1, width: self.frame.width, height: 1.0)
    
    
    bottomLine.backgroundColor = UIColor.darkGray.cgColor
    
    self.borderStyle = UITextBorderStyle.none
    
    self.layer.sublayers?.removeAll()
    self.layer.addSublayer(bottomLine)
    
    }
    override init(frame: CGRect) {
        super.init(frame: frame)
        SetBottomBorder()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        SetBottomBorder()
        
        
        //fatalError("init(coder:) has not been implemented")
    }
    override func draw(_ rect: CGRect) {
        // Drawing code
        SetBottomBorder()
    }
    
}

    


