//
//  ExpensesDemoView.swift
//  days100
//
//  Created by HEMANTH on 01/01/23.
//

import SwiftUI

struct ExpensesDemoView: View {
    
    @StateObject var expenses = Expenses()
    @State var showingAddSheet = false
    
    var body: some View {
        NavigationView{
            List{
                ForEach(expenses.items, id: \.id){ item in
                    
                    HStack{
                        VStack(alignment: .leading){
                            Text(item.name)
                                .font(.headline)
                            
                            Text(item.type)
                                .font(.caption)
                        }
                        Spacer()
                        Text(item.amount,format: .currency(code: "inr"))
                        
                        
                        
                    }
                    
                }.onDelete(perform: removeItems)
            }
            .navigationTitle("iExpense")
            .toolbar{
                Button{
                    //                    let expense = ExpenseItem(name: "hemanth", type: "male", amount: 100.0)
                    //                    expenses.items.append(expense)
                    showingAddSheet = true
                } label: {
                    Image(systemName: "plus")
                }
            }
            .sheet(isPresented: $showingAddSheet){
                AddExpensesView(expense: expenses)
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
