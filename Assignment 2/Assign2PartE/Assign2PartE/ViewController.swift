//
//  ViewController.swift
//  Assign2PartE
//
//  Created by Karthik Kandula on 2/1/20.
//  Copyright © 2020 Karthik Kandula. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // result label
    @IBOutlet weak var resultLabel: UILabel!
    
    // First slider and label outlets
    @IBOutlet weak var firstSlider: UISlider!
    @IBOutlet weak var firstLabel: UILabel!
    
    // Second slider and label outlets
      @IBOutlet weak var secondSlider: UISlider!
      @IBOutlet weak var secondLabel: UILabel!
    
    // First slider Action
    @IBAction func firstSliderValueChanged(_ sender: UISlider) {
        let sliderValue = Int(sender.value)
        
        firstLabel.text = "\(sliderValue)"
        
        let secondLab = secondLabel.text
        
        if secondLab != "Num 2" {
            resultLabel.text = "\(sliderValue * Int(secondLab!)!)"
        }
    }
    
    // Second slider Action
    @IBAction func secondSliderValueChanged(_ sender: UISlider) {
        let sliderValue = Int(sender.value)
        
        secondLabel.text = "\(sliderValue)"
        
        let firstSliderVal = firstSlider.value
        
        resultLabel.text = "\(sliderValue * Int(firstSliderVal) )"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

}

