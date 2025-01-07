//
//  thirdViewController.swift
//  passthrough
//
//  Created by Alexandr on 3.01.25.
//

import UIKit

class ThirdViewController: UIViewController {
    
    
    

    
    
    var  textFromViewController: String? = nil
    
    @IBOutlet weak var label: UILabel!
    
    
    
    override func viewDidLoad() {
        label.text = "3"
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func openFourth(_ sender: Any) {
        if let destinationVC = storyboard?.instantiateViewController(withIdentifier: "FourthViewController") as? FourthViewController {
            destinationVC.textFromViewController = textFromViewController
            navigationController?.pushViewController(destinationVC, animated: true)
        }
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
