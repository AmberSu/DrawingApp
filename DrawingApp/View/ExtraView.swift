//
//  ExtraView.swift
//  DrawingApp
//
//  Created by MacOS on 11/12/2017.
//  Copyright © 2017 amberApps. All rights reserved.
//

import UIKit

@IBDesignable
class ExtraView: UIView {
    override func draw(_ rect: CGRect) {
        if let extraItemContext = UIGraphicsGetCurrentContext() {
            extraItemContext.beginPath()
            extraItemContext.move(to: CGPoint(x: rect.minX, y: rect.minY))
            extraItemContext.addLine(to: CGPoint(x: rect.minX, y: rect.maxY))
            extraItemContext.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
            extraItemContext.closePath()
            extraItemContext.setStrokeColor(UIColor.orange.cgColor)
            extraItemContext.setLineWidth(4.0)
            extraItemContext.strokePath()
        }
    }
}
