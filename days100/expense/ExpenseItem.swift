//
//  ExpenseItem.swift
//  days100
//
//  Created by HEMANTH on 01/01/23.
//

import Foundation

struct ExpenseItem : Identifiable {
    let id : UUID = UUID()
    let name :String
    let type :String
    let amount :Double
}