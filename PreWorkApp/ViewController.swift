//
//  ViewController.swift
//  PreWorkApp
//
//  Created by MSAMB on 2/5/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var morePetsSwitch: UISwitch!
    @IBOutlet weak var morePetsStepper: UIStepper!
    @IBOutlet weak var firstNameTextFeild: UITextField!
    @IBOutlet weak var lastNameTextFeild: UITextField!
    @IBOutlet weak var schoolNameTextFeild: UITextField!
    
    @IBOutlet weak var yearSegmentedControl: UISegmentedControl!
    
    @IBOutlet weak var numberofPetsLabel: UILabel!
   
    @IBAction func stepperDidChange(_ sender: UIStepper) {
        numberofPetsLabel.text = "\(Int(sender.value))"
    }
    @IBAction func introduceSelfDidTap(_ sender: UIButton) {
        let year = yearSegmentedControl.titleForSegment(at: yearSegmentedControl.selectedSegmentIndex)
        
        
        let introduction = "My name is \(firstNameTextFeild.text!) \(lastNameTextFeild.text!) and I attend \(schoolNameTextFeild.text!). I am currently in my \(year!) year and I own \(numberofPetsLabel.text!) dogs. It is \(morePetsSwitch.isOn) that I want more pets."
                
        let alertController = UIAlertController(title: "My Introduction", message: introduction, preferredStyle: .alert)
                
        let action = UIAlertAction(title: "Nice to meet you!", style: .default, handler: nil)
        alertController.addAction(action)
                
        present(alertController, animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

