//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    @IBOutlet var heightLabel: UILabel!
    @IBOutlet var weightLabel: UILabel!
    @IBOutlet var heightSlider: UISlider!
    @IBOutlet var weightSlider: UISlider!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onHeightChanged(_ sender: UISlider) {
        let value = String(format: "%.2f", sender.value)
        heightLabel.text = "\(value)m"
    }

    @IBAction func onWeightChanged(_ sender: UISlider) {
        let value = Int(sender.value)
        weightLabel.text = "\(value)kg"
    }

    @IBAction func calculatePressed(_ sender: UIButton) {
        let height = heightSlider.value
        let weight = weightSlider.value

        let bmi = weight / pow(height, 2)
        print(bmi)

        performSegue(withIdentifier: "goToResult", sender: self)
    }
}