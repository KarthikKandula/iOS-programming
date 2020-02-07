//
//  ViewController.swift
//  02_FoodTracker
//
//  Created by Karthik Kandula on 1/29/20.
//  Copyright © 2020 Karthik Kandula. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBOutlet weak var mealName: UILabel!

    @IBAction func enterMealTextField(_ sender: UITextField) {
        
    }
    
    @IBAction func setDefaultLabel(_ sender: UIButton) {
        mealName.text = "Default Text"
        mealName.text = enterMealTextField.text
    }
    
    
}

