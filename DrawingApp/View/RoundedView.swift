//
//  RoundedButton.swift
//  DrawingApp
//
//  Created by MacOS on 11/12/2017.
//  Copyright © 2017 amberApps. All rights reserved.
//

import UIKit

@IBDesignable
class RoundedView: UITextView {
    override func draw(_ rect: CGRect) {
        let circlePath = UIBezierPath(ovalIn: rect)
        UIColor.black.setStroke()
        circlePath.lineWidth = 8.0
        circlePath.stroke()
    }
}
