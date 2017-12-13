//
//  TriangleView.swift
//  DrawingApp
//
//  Created by MacOS on 13/12/2017.
//  Copyright © 2017 amberApps. All rights reserved.
//

import UIKit

@IBDesignable
class TriangleView: UITextView {
    override func draw(_ rect: CGRect) {
        guard let triangleContext = UIGraphicsGetCurrentContext() else { return }
        triangleContext.beginPath()
        triangleContext.move(to: CGPoint(x: rect.minX, y: rect.maxY))
        triangleContext.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
        triangleContext.addLine(to: CGPoint(x: (rect.maxX / 2.0), y: rect.minY))
        triangleContext.closePath()
        let color = UIColor(displayP3Red: 255/255, green: 194/255, blue: 0, alpha: 0.5)
        triangleContext.setFillColor(color.cgColor)
        triangleContext.fillPath()
    }
}
