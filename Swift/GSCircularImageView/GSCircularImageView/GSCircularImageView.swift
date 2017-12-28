//
//  GSCircularImageView.swift
//  GSCircularImageView
//
//  Created by Sripad, Gurunath on 28/12/17.
//  Copyright © 2017 GSCoder. All rights reserved.
//

import UIKit

class GSCircularImageView: UIImageView {
    
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
        self.layer.borderWidth = 2.0
        self.layer.borderColor = UIColor.black.cgColor
    }
    
}
