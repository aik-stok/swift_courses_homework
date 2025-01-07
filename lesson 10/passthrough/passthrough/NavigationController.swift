//
//  navigationViewController.swift
//  passthrough
//
//  Created by Alexandr on 3.01.25.
//

import UIKit

struct Person {
    var name: String?
    var surname: String?
    var age: Int?
    
    func report() -> String {
        return "My name is \(name ?? "") \(surname ?? ""), I am \(String(age ?? 0) ) yo"
    }
}

class NavigationController: UINavigationController {
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)

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
