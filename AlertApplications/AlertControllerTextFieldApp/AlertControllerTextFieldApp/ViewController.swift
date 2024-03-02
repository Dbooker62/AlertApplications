//
//  ViewController.swift
//  AlertControllerTextFieldApp
//
//  Created by student on 3/2/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelResult: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        labelResult.numberOfLines = 0
        // Do any additional setup after loading the view.
    }

    @IBAction func button(_ sender: UIButton) {
        
        let alert = UIAlertController(title: "Log In"  , message : "Enter Password" , preferredStyle: .alert)
        
        alert.addTextField(configurationHandler: { (textField) in
            textField.placeholder = "Password here"
            textField.isSecureTextEntry = true
        })

        let okAction = UIAlertAction(title: "OK", style: .default, handler: { action -> Void in
            if let savedText = alert.textFields?.first {
                self.labelResult.text = savedText.text
            }
        })
        
        alert.addAction(okAction)
        
        
        self.present(alert , animated: true, completion: nil)
    }
}


