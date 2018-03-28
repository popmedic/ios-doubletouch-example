//
//  DoubleTouchGestureRecognizer.swift
//  doubletouch
//
//  Created by Kevin Scardina on 3/28/18.
//  Copyright © 2018 popmedic. All rights reserved.
//

import UIKit

class DoubleTouchGestureRecognizer: UIGestureRecognizer {
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent) {
        if touches.count == 2 {
            print("\(touches.first?.location(in: self.view).x ?? 0.0), \(touches.first?.location(in: self.view).y ?? 0.0)")
        }
    }
    
    override func reset() {
        if self.state == .possible {
            self.state = .failed
        }
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent) {
        if touches.count == 2{
            self.reset()
        } else {
            self.state = .possible
        }
    }
}
