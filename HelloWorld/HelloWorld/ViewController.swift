//
//  ViewController.swift
//  HelloWorld
//
//  Created by Karthik Kandula on 1/27/20.
//  Copyright © 2020 Karthik Kandula. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func sayHello(_ sender: UIButton) {

        let msg = (nameTF.text ?? "") + ", welcome to this class!"

        let alert = UIAlertController(title: "IT 358", message: msg, preferredStyle: UIAlertController.Style.alert)
        
        // Ref: https://stackoverflow.com/questions/24022479/how-would-i-create-a-uialertview-in-swift

       /* // create the alert

        let alert = UIAlertController(title: "IT 358", message: "Welcome to this class!", preferredStyle: UIAlertController.Style.alert) */

        

        // add an action (button)

        alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))

        

        // show the alert

        self.present(alert, animated: true, completion: nil)
    }
    
    @IBOutlet weak var nameTF: UITextField!
    
}

