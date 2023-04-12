//
//  SaveViewController.swift
//  StudentResult
//
//  Created by Apple on 23/12/22.
//

import UIKit

class SaveViewController: UIViewController {
    
    @IBOutlet weak var resultUILabel: UILabel!
    
    @IBOutlet weak var fullNameUILabel: UILabel!
    var stud: StudentInfo?
    
    @IBOutlet weak var percentageUILabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        if let student = stud{
            fullNameUILabel.text = student.getFullName()
            percentageUILabel.text = "\(student.percentage)"
            resultUILabel.text = student.getResult()
         
        }
        
    }
    
    @IBAction func backButtonAction(_ sender: Any) {
        
        // let result =  (resultUILabel.text)!
        let main = UIStoryboard(name: "Main", bundle: .none)
        let detail = main.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        //self.present(animated: true, completion: nil)
        self.present(detail, animated: true)
        
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
