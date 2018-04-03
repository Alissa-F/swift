//
//  ViewController.swift
//  BullsEye
//
//  Created by Alissa Farber on 28.03.18.
//  Copyright © 2018 Alissa Farber. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var currentValue: Int = 0
    var targetValue: Int = 0
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var targetLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        startNewround()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
        
    }

    @IBAction func showAlert() {
        let difference = abs(currentValue - targetValue)
        let message = "The value of the slider is: \(currentValue)" +
        "\nThe target value was: \(targetValue)" +
        "\nThe difference is: \(difference)"

        let alert = UIAlertController(title: "Hello, World!",
                                      message: message,
                                      preferredStyle: .alert)
        let action = UIAlertAction(title: "OK",
                                   style: .default,
                                   handler: nil)
        alert.addAction(action)
        present (alert, animated: true,
                 completion: nil)
        
        
        
        startNewround()
    }
    
    @IBAction func sliderMoved(_ slider: UISlider) {
        currentValue = lroundf(slider.value)
       // print("The value of the slider is now: \(slider.value)")
    }
    
    func startNewround() {
        targetValue = 1 + Int(arc4random_uniform(100))
        currentValue = 50
        slider.value = Float(currentValue)
        updateLabels()
    }
    
    func updateLabels() {
        targetLabel.text = String(targetValue)
    }
}

