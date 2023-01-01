//
//  Expenses.swift
//  days100
//
//  Created by HEMANTH on 01/01/23.
//

import Foundation

class Expenses: ObservableObject {
    
    @Published var items = [ExpenseItem]() {
        didSet {
            let encoder = JSONEncoder()
            
            if let encodeed = try? encoder.encode(items){
                UserDefaults.standard.set(encodeed, forKey: "items")
            }
            
        }
    }
    
    init(){
        
        if let savedItem = UserDefaults.standard.data(forKey: "items"){
            if let decodedItem = try? JSONDecoder().decode([ExpenseItem].self ,from:savedItem){
                items = decodedItem
                return
            }
        } else{
            
            items = []
        }
    }
}
