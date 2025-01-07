//
//  forthViewController.swift
//  passthrough
//
//  Created by Alexandr on 3.01.25.
//

import UIKit

class FourthViewController: UIViewController {
    
    var  textFromViewController: String? = nil
    @IBOutlet weak var label: UILabel!
    
        
    override func viewDidLoad() {
        label.text = "4"
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func thscreen(_ sender: Any) {
        let xibVC = XibViewController()
        xibVC.textFromViewController = textFromViewController
        navigationController?.pushViewController(xibVC, animated: true)
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
