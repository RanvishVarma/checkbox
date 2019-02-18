//
//  ViewController.swift
//  checkbox
//
//  Created by HJ SOFT on 12/09/18.
//  Copyright © 2018 HJ SOFTWARE. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
var isAllSelected: Bool = false
    
    @IBOutlet weak var buttonTap: UIButton!
    
    @IBOutlet weak var selectTCButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func buttonTap(_ sender: Any) {
        
        if isAllSelected == false
        {
            //errorLabel.isHidden = true
           // showAlert(msg:"Please Accept Terms Of Service")
            let alert = UIAlertController(title: "Alert", message: "Please Accept Terms & Conditions", preferredStyle: UIAlertControllerStyle.alert)
            alert.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
            return
        }
        
        
        
    }
    
    @IBAction func checkboxAction(_ sender: UIButton) {
        
        let image = isAllSelected ? "check-box-empty" : "checked-box-42X42"
        isAllSelected = !isAllSelected
        selectTCButton.setImage(UIImage(named: image), for: .normal)
        
      
        
        
    }
    
}

