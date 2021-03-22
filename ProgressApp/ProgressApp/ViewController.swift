//
//  ViewController.swift
//  ProgressApp
//
//  Created by Katie Johnston on 3/21/21.
//

import UIKit

class ViewController: UIViewController {
    var counter = 0
    
    @IBOutlet var activityView: UIActivityIndicatorView!
    @IBOutlet var labelProgress: UILabel!
    @IBOutlet var progressView: UIProgressView!
    @IBOutlet var stepperObject: UIStepper!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        activityView.hidesWhenStopped = true
        
        progressView.progress = 0
        stepperObject.stepValue = 0.1
        stepperObject.maximumValue = 1.0
        // Do any additional setup after loading the view.
    }


    @IBAction func runButton(_ sender: UIButton) {
        Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) {
            timer in
            self.activityView.startAnimating()
            self.counter += 1
            
            if self.counter >= 5 {
                self.activityView.stopAnimating()
                timer.invalidate()
                self.counter = 0
            }
        }
    }
    
    @IBAction func stepperChanged(_ sender: UIStepper) {
        labelProgress.text = "Completed \(Int(stepperObject.value * 10)) out of 10 tasks"
        progressView.progress = Float(stepperObject.value)
    }
}

