//
//  ViewController.swift
//  CustomProgressBar
//
//  Created by rumi on 12/13/18.
//  Copyright © 2018 rumi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var customProgressBar: CustomProgressBar!
    @IBOutlet weak var progressView: UIProgressView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateProgressBar(progress1: 10, progress2: 20)

    }
    
    func updateProgressBar(progress1: Float, progress2: Float){
        customProgressBar.progress1 = progress1
        customProgressBar.progress2 = progress2
        customProgressBar.setNeedsDisplay()
    }


}

