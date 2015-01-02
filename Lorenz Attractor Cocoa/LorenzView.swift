//
//  LorenzView.swift
//  Lorenz Attractor Cocoa
//
//  Created by Jonas Elfström on 02/01/15.
//  Copyright (c) 2015 Jonas Elfström. All rights reserved.
//

import Foundation
import Cocoa

let width = 1024.0, height = 768.0

class CustomView: NSView {
    override init(frame: NSRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder);
    }
    
    override func drawRect(dirtyRect: NSRect) {
        NSColor.blackColor().setFill()
        NSRectFill(self.bounds)
        lorentzAttractor()
    }
    
    func lorentzAttractor() {
        var x = 0.1 , y = 0.0, z = 0.0, t = 0.0
        for i in 1...20000 {
            let x1 = x + 0.01 * 10 * (y - x)
            let y1 = y + 0.01 * (x * (28 - z) - y)
            let z1 = z + 0.01 * (x * y - 2.66 * z)
            x = x1
            y = y1
            z = z1
            
            let phys_x = width / 2 + 24 * x
            let phys_y = 25 + 14 * z
            
            let red = CGFloat(phys_y / width + 0.1 )
            let green = CGFloat(phys_y / height + 0.1 )
            let blue = CGFloat( phys_x / width * 2 )
            
            var color = NSColor( calibratedRed: red, green: green, blue: blue, alpha: CGFloat(1.0))

            color.set()
            
            NSRectFill(NSMakeRect(CGFloat(phys_x), CGFloat(phys_y), 1, 1))
        }
    }
}