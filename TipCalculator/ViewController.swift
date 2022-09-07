//
//  ViewController.swift
//  TipCalculator
//
//  Created by Aruzhan Koshkarova on 9/4/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billTotalLbl: UILabel!
    @IBOutlet weak var tipAmountLbl: UILabel!
    @IBOutlet weak var tipPercentTxt: UITextField!
    @IBOutlet weak var billAmountTxt: UITextField!
    @IBOutlet weak var calculateTipBtn: UIButton!
    
    @IBOutlet weak var tenBtn: UIButton!
    
    @IBOutlet weak var twentyBtn: UIButton!
    @IBOutlet weak var fifteenBtn: UIButton!
    
    @IBAction func calculateTip(_ sender: Any) {
        let billAmount:Double=Double(billAmountTxt.text!)!
        let tipAmount:Double=(Double(tipPercentTxt.text!)! / 100) * billAmount
        tipAmountLbl.text=String(format: "$%.02f", tipAmount)
        
        billTotalLbl.text=String(format: "$%.02f", billAmount+tipAmount)
    }
    
    @IBAction func tenCalculateTip(_ sender: Any) {
        tipPercentTxt.text="10"
        let billAmount:Double=Double(billAmountTxt.text!)!
        let tipAmount:Double = 0.10*billAmount
        tipAmountLbl.text =  String(format: "$%.02f", tipAmount)
                
        billTotalLbl.text =  String(format: "$%.02f", billAmount + tipAmount)
    }
    
    @IBAction func fifteenCalculateTip(_ sender: Any) {
        tipPercentTxt.text="15"
        let billAmount:Double=Double(billAmountTxt.text!)!
        let tipAmount:Double = 0.15 * billAmount
        tipAmountLbl.text =  String(format: "$%.02f", tipAmount)
                
        billTotalLbl.text =  String(format: "$%.02f", billAmount + tipAmount)
    }
    
    @IBAction func twentyCalculateTip(_ sender: Any) {
        tipPercentTxt.text="20"
        let billAmount:Double=Double(billAmountTxt.text!)!
        let tipAmount:Double = 0.20 * billAmount
        tipAmountLbl.text =  String(format: "$%.02f", tipAmount)
                
        billTotalLbl.text =  String(format: "$%.02f", billAmount + tipAmount)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

