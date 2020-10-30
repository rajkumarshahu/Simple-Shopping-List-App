//
//  ViewController.swift
//  Simple-Shopping-List-App
//
//  Created by Raj Kumar Shahu on 2020-10-27.
//  Copyright © 2020 Centennial College. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ShoppingListNameTF: UITextField!

    @IBOutlet weak var FirstListItemTF: UITextField!
    @IBOutlet weak var SecondListItemTF: UITextField!
    @IBOutlet weak var ThirdListItemTF: UITextField!
    @IBOutlet weak var FourthListItemTF: UITextField!
    @IBOutlet weak var FifthListItemTF: UITextField!
    
    @IBOutlet weak var FirstItemQtyTF: UITextField!
    @IBOutlet weak var SecondItemQtyTF: UITextField!
    @IBOutlet weak var ThirdItemQtyTF: UITextField!
    @IBOutlet weak var FourthItemQtyTF: UITextField!
    @IBOutlet weak var FifthItemQtyTF: UITextField!
    
    @IBOutlet weak var FirstStepper: UIStepper!
    @IBOutlet weak var SecondStepper: UIStepper!
    @IBOutlet weak var ThirdStepper: UIStepper!
    @IBOutlet weak var FourthStepper: UIStepper!
    @IBOutlet weak var FifthStepper: UIStepper!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        reset()
    }


    @IBAction func StepperAction(_ sender: UIStepper) {
        FirstItemQtyTF.text =  String(Int(FirstStepper.value))
        SecondItemQtyTF.text = String(Int(SecondStepper.value))
        ThirdItemQtyTF.text = String(Int(ThirdStepper.value))
        FourthItemQtyTF.text = String(Int(FourthStepper.value))
        FifthItemQtyTF.text = String(Int(FifthStepper.value))
    }
    
    
    @IBAction func CancelButton_Press(_ sender: UIButton) {
        reset()
    }
    
    
    @IBAction func SaveButton_Press(_ sender: UIButton) {
        
        print("Tapped Save Button")
    }
    
    func reset() {
        ShoppingListNameTF.text = "My Shopping List"
        FirstListItemTF.text = ""
        FirstItemQtyTF.text = "0"
        FirstStepper.value = 0.0
        
        SecondListItemTF.text = ""
        SecondItemQtyTF.text = "0"
        SecondStepper.value = 0.0
        
        ThirdListItemTF.text = ""
        ThirdItemQtyTF.text = "0"
        ThirdStepper.value = 0.0
        
        FourthListItemTF.text = ""
        FourthItemQtyTF.text = "0"
        FourthStepper.value = 0.0
        
        FifthListItemTF.text = ""
        FifthItemQtyTF.text = "0"
        FifthStepper.value = 0.0
    }
}

