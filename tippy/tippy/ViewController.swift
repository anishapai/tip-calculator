//
//  ViewController.swift
//  tippy
//
//  Created by MHC User on 9/10/18.
//  Copyright © 2018 Anisha Pai. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tipSlider: UISlider!
    @IBOutlet weak var preTotalLabel: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var percentage: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    
    
    // When user enters numbers
    @IBAction func UserTypes(_ sender: Any) {
        

        
        let sliderVal = tipSlider.value
        
        percentage.text = String(format: "%.0f%%", sliderVal)
        
        let preTotal = Double(preTotalLabel.text!) ?? 0
        let tip = preTotal * Double(sliderVal / 100)
        let total = preTotal + tip
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
    
}

