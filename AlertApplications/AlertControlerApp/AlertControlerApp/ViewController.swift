//
//  ViewController.swift
//  AlertControlerApp
//
//  Created by student on 3/2/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var BUTTONTAPPED: UIButton!
    
    @IBAction func buttonTapped (_ sender: UIButton)
    {
        let alert = UIAlertController(title: "Warnning" , message: "Zombie are loose!" , preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "OK" , style: .default, handler: {action -> Void in })
        alert.addAction(okAction)
        self.present(alert , animated: true, completion: nil)
    }
    
}

