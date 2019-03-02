//
//  TransactionDetailViewController.swift
//  ATM
//
//  Created by Jindal, Shishir on 7/12/17.
//  Copyright © 2017 Jindal, Shishir. All rights reserved.
//

import UIKit

class TransactionDetailViewController: UIViewController {

    @IBOutlet weak var type: UITextField!
    @IBOutlet weak var date: UITextField!
    
    @IBOutlet weak var amount: UITextField!
   
    var transaction : Transaction!
    override func viewDidLoad() {
        type.text = transaction.type
        date.text = transaction.date
        amount.text = String(transaction.amount)
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
