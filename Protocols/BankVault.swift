//
//  BankVault.swift
//  Protocols
//
//  Created by Papa Roach on 8/8/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//


class BankVault: ProvideAccess {
    
    let name: String
    let address: String
    var amount: Double = 0.0
    
    init(name: String, address: String) {
        self.name = name
        self.address = address
    }
    
}

protocol ProvideAccess {
    func allowEntryWithPassword(_ password: [Int]) -> Bool
}


extension BankVault {
    func allowEntryWithPassword(_ password: [Int]) -> Bool {
        var isValid : Bool
        if password.isEmpty {
            return false
        } else if password.count > 10 {
            return false

        } else {
            for number in 0..<password.count {
                if number % 2 == 0 {
                    isValid = password[number] % 2 == 0
                    if !isValid { return false }
                }
            }
            return true
        
        }
    }
}
