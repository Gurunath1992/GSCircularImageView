//
//  GSCircularImageView.swift
//  GSCircularImageView
//
//  Created by Sripad, Gurunath on 28/12/17.
//  Copyright © 2017 GSCoder. All rights reserved.
//

import UIKit

class GSCircularImageView: UIImageView {
    
    @IBInspectable
    var borderColor:UIColor{
        get {
            return UIColor.blue
        }
        set {
            layer.borderColor = newValue.cgColor
        }
    }
    
    @IBInspectable
    var borderWidth:CGFloat{
        get {
            return 1.0
        }
        set {
            layer.borderWidth = newValue
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        circularView()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        circularView()
    }
    
    private func circularView() {
        self.layer.cornerRadius = self.frame.size.width/2
        self.clipsToBounds = true
        self.layer.borderColor = borderColor.cgColor
        self.layer.borderWidth = borderWidth
    }
    
}
