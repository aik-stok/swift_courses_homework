//
//  secondViewController.swift
//  passthrough
//
//  Created by Alexandr on 3.01.25.
//

import UIKit

class SecondViewController: UIViewController {
    
 
        
    
    @IBOutlet weak var label: UILabel!
    
    var  textFromViewController: String? = nil

    override func viewDidLoad() {
        label.text = "2"
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    

    
    
    
    @IBAction func openThird(_ sender: Any) {
        
      if let destinationVC = storyboard?.instantiateViewController(withIdentifier: "ThirdViewController") as? ThirdViewController {
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
