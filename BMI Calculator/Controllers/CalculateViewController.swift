//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit


class CalculateViewController: UIViewController {
    
    var calculatorBrain = CalculatorBrain()
    

    
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
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
        
        calculatorBrain.calculateBMI(height: height, weight: weight)
    
                self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController // this will be the VC that will be initialized when the segue gets triggered
            destinationVC.bmiValue = calculatorBrain.getBMIValue()
            destinationVC.advice = calculatorBrain.getAdvice()
            destinationVC.color = calculatorBrain.getColor()
        }
    
    }


}

