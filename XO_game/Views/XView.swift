//
//  XView.swift
//  XO_game
//
//  Created by Grisha Pospelov on 11.11.2021.
//

import UIKit

public class XView: MarkView {
    
    internal override func updateShapeLayer() {
        super.updateShapeLayer()
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 0.25 * bounds.width, y: 0.25 * bounds.height))
        path.addLine(to: CGPoint(x: 0.75 * bounds.width, y: 0.75 * bounds.height))
        path.move(to: CGPoint(x: 0.75 * bounds.width, y: 0.25 * bounds.height))
        path.addLine(to: CGPoint(x: 0.25 * bounds.width, y: 0.75 * bounds.height))
        shapeLayer.path = path.cgPath
    }
}
