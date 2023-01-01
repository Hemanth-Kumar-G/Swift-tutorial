//
//  Expenses.swift
//  days100
//
//  Created by HEMANTH on 01/01/23.
//

import Foundation

class Expenses: ObservableObject {
    @Published var items = [ExpenseItem]()
}
