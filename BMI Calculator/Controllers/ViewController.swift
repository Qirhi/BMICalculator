//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    
    @IBAction func heightSliderChanged(_ sender: UISlider) {
        let heightValue = sender.value
        print( round(heightValue * 100) / 100.0 )
    }
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        let weightValue = sender.value
        print ( round(weightValue * 100) / 100.0 )
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

