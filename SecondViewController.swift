//
//  SecondViewController.swift
//  ATM
//
//  Created by Jindal, Shishir on 7/10/17.
//  Copyright © 2017 Jindal, Shishir. All rights reserved.
//

import UIKit
var model = TransactionModel()
   var transactions = Array<Transaction>()
var type: String = ""
class SecondViewController: UIViewController {

    @IBAction func viewTransaction(_ sender: UIButton) {
        if transactions.count == 0 {
            let alert = UIAlertController(title: "Perform at least 1 transaction to view transction history ", message: "", preferredStyle: UIAlertControllerStyle.alert)
            alert.addAction(UIAlertAction(title : "Ok", style: .default ,handler : { _ in }))
            self.present(alert, animated: false, completion: {})
        }
        
    }
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
