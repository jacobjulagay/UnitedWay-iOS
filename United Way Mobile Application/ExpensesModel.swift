//
//  ExpensesModel.swift
//  United Way Mobile Application
//
//  Created by ARNAV SINGHANIA on 11/11/19.
//  Copyright © 2019 ARNAV SINGHANIA. All rights reserved.
//

import Foundation

struct ExpensesModel:Decodable {
    
    let expenses:Expense?
    
    let net_taxes:Int? //rounding off errors
    var monthly_taxes:Int? {
        return (self.net_taxes ?? 0)/12
    }
    
}

struct Expense:Decodable {
    let rent: Int?
    var annualRent:Int? {
        return (self.rent ?? 0)*12
    }
    
    let childcare:Int?
    var annualChildcare:Int? {
        return (self.childcare ?? 0)*12
    }
    
    let food:Int?
    var annualFood:Int? {
        return (self.food ?? 0)*12
    }
    
    let healthcare:Int?
    var annualHealthcare:Int? {
        return (self.healthcare ?? 0)*12
    }
    
    let transportation:Int?
    var annualTransportation:Int? {
        return (self.transportation ?? 0)*12
    }
    
    let misc:Int?
    var annualMisc:Int? {
        return (self.misc ?? 0)*12
    }
}
