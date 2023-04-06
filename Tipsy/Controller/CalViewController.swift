//
//  ViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class CalViewController: UIViewController {

    @IBOutlet weak var billTextField: UITextField!
    
    @IBOutlet weak var splitStepper: UIStepper!
    
    @IBOutlet weak var splitTextField: UILabel!
    
    @IBOutlet weak var zeroPctButton: UIButton!
    @IBOutlet weak var tenPctButton: UIButton!
    @IBOutlet weak var twentyPctButton: UIButton!
    
    var calBrain = CalBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func pctPressed(_ sender: UIButton) {
        
        billTextField.endEditing(true)
        
        switch sender.currentTitle {
        case "0%":
            zeroPctButton.isSelected = true
            tenPctButton.isSelected = false
            twentyPctButton.isSelected = false
            self.calBrain.tipPct = 0.0
        case "10%":
            zeroPctButton.isSelected = false
            tenPctButton.isSelected = true
            twentyPctButton.isSelected = false
            self.calBrain.tipPct = 0.1
        default:
            zeroPctButton.isSelected = false
            tenPctButton.isSelected = false
            twentyPctButton.isSelected = true
            self.calBrain.tipPct = 0.2
        }
        
    }
    
    
    @IBAction func splitPressed(_ sender: UIStepper) {
        billTextField.endEditing(true)
        calBrain.splitNo = sender.value
        splitTextField.text = calBrain.returnSplitNo()
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        billTextField.endEditing(true)
        
        calBrain.bill = Float(billTextField.text ?? "0.0")
        
        self.performSegue(withIdentifier: "goToResult", sender: sender)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.calBrain = calBrain
        }
    }
}

