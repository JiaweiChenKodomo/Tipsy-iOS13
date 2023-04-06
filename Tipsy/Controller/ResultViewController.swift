//
//  ResultViewController.swift
//  Tipsy
//
//  Created by Jiawei Chen on 4/6/23.
//  Copyright © 2023 The App Brewery. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var aveTextField: UILabel!
    
    @IBOutlet weak var splitBtwTextField: UILabel!
    
    var calBrain: CalBrain?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        aveTextField.text = calBrain?.returnPay()
        splitBtwTextField.text = calBrain?.returnPay2()
    }
    
    @IBAction func reCalPressed(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
