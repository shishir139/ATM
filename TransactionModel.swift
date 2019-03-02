//
//  TransactionModel.swift
//  ATM
//
//  Created by Jindal, Shishir on 7/11/17.
//  Copyright © 2017 Jindal, Shishir. All rights reserved.
//

import Foundation

class TransactionModel {
 
   
    var type : String
    var date: String
    var amount: Float
    init(_ type: String, _ date: String, _ amount: Float) {
      
        self.type = type
        self.date = date
        self.amount = amount
    }

    init() {
        
        self.type = ""
        self.date = ""
        self.amount = 0
    }
    
    
//    init(_ section: Int) {
//        transactions = Array<Transaction>()
//      //  loadDatabase(section)
//    }
    
    func count() ->Int {
        return transactions.count
    }
    
    func transactionAtIndex(_ idx : Int) -> Transaction {
        return transactions[idx]
    }
    
    func addTransaction (_ c:Transaction) {
        transactions.append(Transaction(c.type, c.date, c.amount))
        
    }
    
    func loadDatabase() {
        transactions.append(Transaction(type, date, amount))
       
    }
}
