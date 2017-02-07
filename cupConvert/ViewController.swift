//
//  ViewController.swift
//  cupConvert
//
//  Created by John Gallaugher on 2/6/17.
//  Copyright © 2017 Gallaugher. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var cupField: UITextField!
    @IBOutlet weak var resultsLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func showAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let alertAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(alertAction)
        present(alert, animated: true, completion: nil)
    }
    
    @IBAction func convertPressed(_ sender: UIButton) {
        
        if let cups = Double(cupField.text! ) {
            
            let oz = cups * 8
            let tbsp = cups * 16
            let quarts = cups * 0.25
            let pints = cups * 0.5
            
            let resultsText = "\(cups) cups = \(oz) ounces, \(tbsp) tablespoons, \(quarts) quarts, or \(pints) pints"
            resultsLabel.text = resultsText
        } else {
            resultsLabel.text = ""
            
            let titleString = "Error:"
            let messageString = "\(cupField.text!) is not a valid number"

            showAlert(title: titleString, message: messageString)
        }
        
    }
    
    
}

