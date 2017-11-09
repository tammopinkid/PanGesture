//
//  ViewController.swift
//  PanGesture
//
//  Created by 6272 on 11/9/2560 BE.
//  Copyright © 2560 Benjarat. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBAction func pinchMethod(_ sender: UIPinchGestureRecognizer) {
        sender.view?.transform = CGAffineTransform(scaleX: sender.scale, y: sender.scale)
    }
    @IBAction func rotateMethod(_ sender: UIRotationGestureRecognizer) {
        self.imageView.transform = CGAffineTransform.identity.rotated(by: sender.rotation)
    }
    
    @IBAction func panMethod(_ sender: UIPanGestureRecognizer) {
        let translation = sender.translation(in: self.imageView)
        sender.view?.center = CGPoint(x:(sender.view?.center.x)!+translation.x, y:(sender.view?.center.y)!+translation.y)
        sender.setTranslation(CGPoint(x:0,y:0), in: self.imageView)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

