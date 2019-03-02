//
//  Transaction.swift
//  ATM
//
//  Created by Jindal, Shishir on 7/11/17.
//  Copyright © 2017 Jindal, Shishir. All rights reserved.
//

import Foundation


class Transaction {
    
    var type : String
    var date: String
    var amount: Float
    
    init() {
        type = ""
        date = ""
        amount = 0
        
    }
    
    init(_ type: String, _ date: String, _ amount: Float) {
        self.type = type
        self.date = date
        self.amount = amount
    }
}
