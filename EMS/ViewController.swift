//
//  ViewController.swift
//  EMS
//
//  Created by COE-009 on 05/09/19.
//  Copyright © 2019 COE-009. All rights reserved.
//


import UIKit

class ViewController: UIViewController {
    
 
    @IBOutlet weak var txtemail: example!
    
    @IBOutlet weak var txtpassword: example!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func BottomBorder(textBox:UITextField)->UITextField  {
        let bottomLine = CALayer()
        
        bottomLine.frame = CGRect.init(x: 0.0, y: textBox.frame.height-1, width: textBox.frame.width, height: 1.0)//(0, textBox.frame.height - 1, textBox.frame.width, 1)
        bottomLine.backgroundColor = UIColor.white.cgColor
        textBox.borderStyle = UITextBorderStyle.none
        textBox.layer.addSublayer(bottomLine)
        return textBox
    }
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        txtemail.setNeedsDisplay()//.draw(txtEmailId.frame)
        txtpassword.setNeedsDisplay()
        
    }
    
}




