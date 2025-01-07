//
//  xibViewController.swift
//  passthrough
//
//  Created by Alexandr on 4.01.25.
//

import UIKit

class XibViewController: UIViewController {
    
    var  textFromViewController: String? = nil


    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var warningLabel: UILabel!
    
    @IBOutlet weak var nameTextfield: UITextField!
    
    @IBOutlet weak var surnameTextfield: UITextField!
    
    @IBOutlet weak var ageTextfield: UITextField!
    
    @IBOutlet weak var submit: UIButton!
    
    
    
    @IBAction func submitProfile(_ sender: UIButton!) {
        if ageTextfield.text?.rangeOfCharacter(from: CharacterSet.decimalDigits.inverted) != nil {
            warningLabel.textColor = .red
            warningLabel.isHidden = false
            warningLabel.text = "Don't you dare put strings in age field"
        } else if nameTextfield.text?.isEmpty == false && surnameTextfield.text?.isEmpty == false && ageTextfield.text?.isEmpty == false {
            if let parent = navigationController?.viewControllers.first{
                let person = Person (name:nameTextfield.text, surname: surnameTextfield.text, age: Int(ageTextfield.text ?? "") )
                (parent as? FirstViewController)?.person = person
                warningLabel.textColor = .green
                warningLabel.isHidden = false
                warningLabel.text = "Submitted"
            }
        } else {
            warningLabel.textColor = .red
            warningLabel.isHidden = false
            warningLabel.text = "Please fill all fields"
        }
    }
    

    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        warningLabel.isHidden = true
        
        // Do any additional setup after loading the view.
    }
    
    
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        label.text = textFromViewController
    }
    
    override func viewWillDisappear(_ animated: Bool) {

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
