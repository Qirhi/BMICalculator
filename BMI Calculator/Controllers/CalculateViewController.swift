//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit


class CalculateViewController: UIViewController {
    
    var bmiValue = "0.0"
    
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    

    
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
    

    @IBAction func calculatePressed(_ sender: UIButton) {
        let height = heightSlider.value
        let weight = weightSlider.value
        
        let bmi = weight / pow(height, 2)
        bmiValue = String(format: "%.1f", bmi)
        
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController // this will be the VC that will be initialized when the segue gets triggered
            destinationVC.bmiValue = self.bmiValue
        }
        

    }


}

