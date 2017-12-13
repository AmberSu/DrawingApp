//
//  RhombusView.swift
//  DrawingApp
//
//  Created by MacOS on 11/12/2017.
//  Copyright © 2017 amberApps. All rights reserved.
//

import UIKit

@IBDesignable
class RhombusView: UILabel {
    override func draw(_ rect: CGRect) {
        if let rhombusContext = UIGraphicsGetCurrentContext() {
            rhombusContext.beginPath()
            rhombusContext.move(to: CGPoint(x: rect.minX, y: rect.maxY))
            rhombusContext.addLine(to: CGPoint(x: (rect.maxX - 0.33 * rect.maxX), y: rect.maxY))
            rhombusContext.addLine(to: CGPoint(x: (rect.maxX), y: rect.minY))
            rhombusContext.addLine(to: CGPoint(x: (rect.maxX - 0.66 * rect.maxX), y: rect.minY))
            rhombusContext.closePath()
            rhombusContext.setStrokeColor(UIColor.orange.cgColor)
            rhombusContext.setLineWidth(7.0)
            rhombusContext.strokePath()
        }
    }
}
