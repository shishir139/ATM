//
//  AddTransactionViewController.swift
//  ATM
//
//  Created by Jindal, Shishir on 7/12/17.
//  Copyright © 2017 Jindal, Shishir. All rights reserved.
//

import UIKit

class AddTransactionViewController: UIViewController {
    
    
    @IBOutlet weak var dater: UIDatePicker!
    @IBOutlet weak var type: UITextField!
    
    @IBAction func dateChange(_ sender: UIDatePicker) {
       
            date.text = String(describing : dater.date)

    }
    @IBOutlet weak var date: UITextField!
    @IBOutlet weak var amount: UITextField!
    var transaction : Transaction!
var result : Bool = false
    func validate(_ value: String) -> Bool {
        if let checkAmount = Float(value) {
            if checkAmount >= 0 {
                result = true
            } else {
                result = false
            }
            
        }
        return result
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var newTypes :String = type.text!.trimmingCharacters(in: NSCharacterSet.whitespaces)
        
        var newDate : String = date.text!
        var checkNegative : String = amount.text!.trimmingCharacters(in: NSCharacterSet.whitespaces)
        checkNegative.trimmingCharacters(in: NSCharacterSet.whitespaces)
        let formatter = DateFormatter()
        
        formatter.dateFormat = "MM/dd/yyyy hh:mm:ss a"
let convertedDate = formatter.string(from: dater.date as Date)
        var newAmount : Float = 0
        if validate(checkNegative) == true {
            newAmount = Float(checkNegative)!
//            let checkDepositAmount: Float
//            let checkWithdrawlAmount: Float
       
        if newTypes.lowercased() == "deposit" {
         //if checkDepositAmount = Float(checkAmount)
            
            
            balance = balance + newAmount
            transaction = Transaction(newTypes, convertedDate, newAmount)
        } else if newTypes.lowercased() == "withdrawl" {
            if newAmount <= balance {
            balance = balance - newAmount
            transaction = Transaction(newTypes, convertedDate, newAmount)
            } else {
                let alert = UIAlertController(title: "You do not have sufficient funds", message: "", preferredStyle: UIAlertControllerStyle.alert)
                alert.addAction(UIAlertAction(title : "Ok", style: .default ,handler : { _ in }))
                self.present(alert, animated: false, completion: {})
            }
        } else if newTypes.lowercased() == "balance enquiry"{
            if newAmount != 0 {
                
                transaction = Transaction(newTypes, convertedDate, 111)
            } else  {
                transaction = Transaction(newTypes, convertedDate, 333)
            }
            
            
            
        } else {
            transaction = Transaction("strange type", newDate, newAmount)
            }
        }
        else if validate(checkNegative) == false {
transaction = Transaction(newTypes, newDate, 222)
            
        
        }

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
