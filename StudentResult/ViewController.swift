//
//  ViewController.swift
//  StudentResult
//
//  Created by Apple on 23/12/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var firstNameUITextField: UITextField!
    @IBOutlet weak var middleNameUITextField: UITextField!
    @IBOutlet weak var lastNameUITextField: UITextField!
    @IBOutlet weak var percentageUITextField: UITextField!
    @IBOutlet weak var nameUISwitch: UISwitch!
    var switchValue : Bool = true
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func SwitchUISwitch(_ sender: UISwitch) {
        if nameUISwitch.isOn{
            switchValue = true
        }
        else{
            switchValue = false
        }
    }
    
    @IBAction func NextUIButton(_ sender: UIButton) {
        
        let main = UIStoryboard(name: "Main", bundle: .none)
        let detail = main.instantiateViewController(withIdentifier: "SaveViewController") as! SaveViewController
        self.present(detail, animated: true, completion: nil)
        
        let per = Double(percentageUITextField.text!)!
        let reservation = switchValue
        
        
        detail.stud = StudentInfo(firstName: "\(firstNameUITextField.text!)", middleName: "\(middleNameUITextField.text!)", lastName: "\(lastNameUITextField.text!)" , percentage: per, isReservation: reservation)
    }
}

















