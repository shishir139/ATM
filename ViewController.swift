//
//  ViewController.swift
//  ATM
//
//  Created by Jindal, Shishir on 7/10/17.
//  Copyright © 2017 Jindal, Shishir. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var password: UITextField!

    @IBAction func login(_ sender: UIButton) {
        var pwd: String = " "
        pwd = password.text!.trimmingCharacters(in: NSCharacterSet.whitespaces)
        if pwd == "Hello" {
            performSegue(withIdentifier: "login", sender: self)     }
        else {
            let alert = UIAlertController(title: "Authentication failed! Kindly enter correct password", message: "", preferredStyle: UIAlertControllerStyle.alert)
            alert.addAction(UIAlertAction(title : "Ok", style: .default ,handler : { _ in }))
            self.present(alert, animated: false, completion: {})
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

