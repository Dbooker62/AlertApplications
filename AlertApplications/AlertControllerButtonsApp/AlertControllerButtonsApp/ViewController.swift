//
//  ViewController.swift
//  AlertControllerButtonsApp
//
//  Created by student on 3/2/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var buttonTapped: UIButton!
    
    
    @IBOutlet weak var labelResult: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelResult.numberOfLines = 0
        // Do any additional setup after loading the view.
    }
    
    @IBAction func buttonTapped (_ sender: UIButton)
    {
        let alert = UIAlertController(title: "Warning " , message: "Zombies are loose!" , preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "OK", style: .default , handler: {
            action -> Void in self.labelResult.text = "OK"
        })
        
        let cancelAction = UIAlertAction(title: "cancel", style: .cancel, handler: {action -> Void in self.labelResult.text = "cancel"})
        
        let destroyAction = UIAlertAction(title: "Destroy" , style: .destructive , handler: {action -> Void in self.labelResult.text = "Destroy"})
        
        alert.addAction(okAction)
        alert.addAction(cancelAction)
        alert.addAction(destroyAction)
        
        
        self.present(alert , animated: true, completion:nil)
    }

}

