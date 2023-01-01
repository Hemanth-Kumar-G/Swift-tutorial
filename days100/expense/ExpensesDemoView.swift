//
//  ExpensesDemoView.swift
//  days100
//
//  Created by HEMANTH on 01/01/23.
//

import SwiftUI

struct ExpensesDemoView: View {
    
    @StateObject var  expenses = Expenses()
    var body: some View {
        NavigationView{
            List{
                ForEach(expenses.items, id: \.id){ item in
                    Text(item.name)
                    
                }.onDelete(perform: removeItems)
            }
            .navigationTitle("iExpense")
            .toolbar{
                Button{
                    let expense = ExpenseItem(name: "hemanth", type: "male", amount: 100.0)
                    expenses.items.append(expense)
                } label: {
                    Image(systemName: "plus")
                }
            }
        }
    }
    
    
    func removeItems(at offsets : IndexSet)  {
        expenses.items.remove(atOffsets: offsets)
    }
}

struct ExpensesDemoView_Previews: PreviewProvider {
    static var previews: some View {
        ExpensesDemoView()
    }
}
