//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    
//    let text = "\(height)m"
    
    @IBAction func heightSliderChanged(_ sender: UISlider) {
        let heightValue = sender.value
        let formattedHeightValue = String(format: "%.2f", heightValue) // convert to String
        self.heightLabel.text = "\(formattedHeightValue)m"
        
    }
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        let weightValue = sender.value
        let formattedWeightValue = String(Int(weightValue)) // convert to String
        self.weightLabel.text = "\(formattedWeightValue)Kg"
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

