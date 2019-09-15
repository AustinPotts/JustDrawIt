//
//  DrawView.swift
//  JustDraw
//
//  Created by Austin Potts on 9/15/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

@IBDesignable class DrawView: UIView {

    
    private let borderWidth: CGFloat = 5.0
    
    
    override func draw(_ rect: CGRect) {
        
        if let context = UIGraphicsGetCurrentContext() {
            
            let topPoint = CGPoint(x: 200, y: 100)
            let bottomPoint = CGPoint(x: 50, y: 300)
            let rightPoint = CGPoint(x: 350, y: 300)
            let middleBottomPoint = CGPoint(x: 200, y: 560)
            let rightBottomPoint = CGPoint(x: 350, y: 300)
            
            
            context.move(to: topPoint)
            context.addLine(to: bottomPoint)
            context.addLine(to: middleBottomPoint)
            context.addLine(to: rightBottomPoint)
            context.addLine(to: rightPoint)
            
            context.setFillColor(UIColor.black.cgColor)
            context.fillPath()
            
            
            if let slasherContext = UIGraphicsGetCurrentContext() {
                let whiteTop = CGPoint(x: 200, y: 250)
                let whiteSideLineLeft = CGPoint(x: 80, y: 250)
                let whiteSideLineRight = CGPoint(x: 320, y: 250)
                
                slasherContext.move(to: whiteTop)
                slasherContext.addLine(to: whiteSideLineLeft)
                slasherContext.move(to: whiteTop)
                slasherContext.addLine(to: whiteSideLineRight)
                slasherContext.setLineWidth(13)
                slasherContext.setStrokeColor(UIColor.white.cgColor)
                slasherContext.strokePath()
                
                
            }
            
        }
    }
    
    
    
    
    
    


}
