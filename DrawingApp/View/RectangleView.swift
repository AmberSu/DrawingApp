//
//  RectangleView.swift
//  DrawingApp
//
//  Created by MacOS on 11/12/2017.
//  Copyright © 2017 amberApps. All rights reserved.
//

import UIKit

@IBDesignable
class RectangleView: UIView {
    
    override func draw(_ rect: CGRect) {
        if let rectangleContext = UIGraphicsGetCurrentContext() {
            rectangleContext.beginPath()
            rectangleContext.move(to: CGPoint(x: rect.minX, y: rect.minY))
            rectangleContext.addLine(to: CGPoint(x: rect.maxX, y: rect.minY))
            rectangleContext.addLine(to: CGPoint(x: (rect.maxX - 0.2 * rect.maxX), y: rect.maxY))
            rectangleContext.addLine(to: CGPoint(x: (rect.maxX - 0.8 * rect.maxX), y: rect.maxY))
            rectangleContext.closePath()
            rectangleContext.setStrokeColor(UIColor.orange.cgColor)
            rectangleContext.setLineWidth(7.0)
            rectangleContext.strokePath()
        }
    }
}
