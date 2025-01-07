//
//  ViewController.swift
//  passthrough
//
//  Created by Alexandr on 3.01.25.
//

import UIKit


class FirstViewController: UIViewController {
    
   
    
    var person: Person? = nil
    
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var textfield: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        if person?.name != nil {
            label.text = person?.report()
            label.isHidden = false
        } else {
            label.isHidden = true
            label.text = person?.report()
        }
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "second" {
            if let destinationVC = segue.destination as? SecondViewController {
                destinationVC.textFromViewController = textfield.text
            }
        }
    }
    
    
}

