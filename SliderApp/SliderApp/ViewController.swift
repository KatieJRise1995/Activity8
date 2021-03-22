//
//  ViewController.swift
//  SliderApp
//
//  Created by Katie Johnston on 3/21/21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var labelValue: UILabel!
    @IBOutlet var sliderValue: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func changeSlider(_ sender: UIButton) {
        sliderValue.minimumValue = 1
        sliderValue.maximumValue = 25
        sliderValue.value = 7
        sliderValue.minimumTrackTintColor = UIColor.red
        sliderValue.maximumTrackTintColor = UIColor.green
        sliderValue.thumbTintColor = UIColor.black
    }
    @IBAction func sliderValueChanged(_ sender: UISlider) {
        labelValue.text = "\(sliderValue.value)"
    }
}

