//
//  ViewController.swift
//  doubletouch
//
//  Created by Kevin Scardina on 3/28/18.
//  Copyright © 2018 popmedic. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIGestureRecognizerDelegate {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let recognizer = DoubleTouchGestureRecognizer(target: self, action: #selector(handleDouble(recognizer:)))
        recognizer.delegate = self
        self.view.addGestureRecognizer(recognizer)
    }

    @objc func handleDouble(recognizer: DoubleTouchGestureRecognizer) {
        print("event worked")
    }
}

