//
//  ViewController.swift
//  Prework
//
//  Created by Andrii Korotun on 2/4/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipPercentageLabel: UILabel!
    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var tipPercentageSlider: UISlider!
    @IBOutlet weak var totalLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tipAmountLabel.text = "$0.00"
        totalLabel.text = "$0.00"
        let tipPercentage = 15
        tipPercentageSlider.value = Float(tipPercentage)
        tipPercentageLabel.text = "\(tipPercentage)%"
    }

    @IBAction func calculateTip(_ sender: Any) {
        // Get bill amount from text field input
        let bill = Double(billAmountTextField.text!) ?? 0
        
        // Get Total tip by multiplying tip * tipPercentage
        let tipPercentage = round(tipPercentageSlider.value)
        let tip = bill * Double(tipPercentage) / 100

        let total = bill + tip
        
        // Update Tip Amount Label
        tipPercentageLabel.text = "\(Int(tipPercentage))%"
        tipAmountLabel.text = String(format: "$%.2f", tip)
        // Update Total Amount
        totalLabel.text = String(format: "$%.2f", total)
    }
}

