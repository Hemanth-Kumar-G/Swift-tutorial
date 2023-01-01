//
//  AddExpensesView.swift
//  days100
//
//  Created by HEMANTH on 01/01/23.
//

import SwiftUI

let _PERSONAL = "personal"
let _BUSINESS = "business"

struct AddExpensesView: View {
    
    @ObservedObject var expense : Expenses
    
    @Environment(\.dismiss) var dismiss
    
    @State private var name = ""
    @State private var type = _PERSONAL
    @State private var amount = 0.0
    
    let types = [_PERSONAL,_BUSINESS]
    
    var body: some View {
        
        NavigationView{
            
            Form{
                
                TextField("enter the name " , text: $name)
                
                Picker("chose the type ", selection: $type){
                    ForEach(types, id: \.self){
                        Text($0)
                    }
                }.pickerStyle(.menu)
                
                TextField("enter the value", value: $amount, format: .currency(code: "inr") )
                    .keyboardType(.decimalPad)
            }
            .navigationTitle("Add new expense")
            .toolbar {
                Button("add"){
                    let expenseItem = ExpenseItem(name: name, type: type, amount: amount)
                    expense.items.append(expenseItem)
                    dismiss()
                }
             
            }
            
        }
    }
}

struct AddExpensesView_Previews: PreviewProvider {
    static var previews: some View {
        AddExpensesView(expense: Expenses())
    }
}
