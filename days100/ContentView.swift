//
//  ContentView.swift
//  days100
//
//  Created by HEMANTH on 24/12/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var checkAmount = 100.0
    @State private var numberOfPeople = 2
    @State private var tipPercentage = 5
    
    @FocusState private var amountIsFocused : Bool
    
    let tipPercentages = [5,10,20]
    
    var totalPerPerson :Double{
        //calculate the total per person  here with tips
        
        let peopleCount = Double(numberOfPeople + 2)
        let tipSelection = Double(tipPercentage)
        
        let tipValue = checkAmount / 100 * tipSelection
        let grantTotal  = checkAmount + tipValue
        let amountPerPeron = grantTotal / peopleCount
        return amountPerPeron
    }
    
    var body: some View {
        NavigationView{
            Form{
                Section{
                    TextField("Enter the Currency",value: $checkAmount,
                              format: .currency(code: Locale.current.currency?.identifier ?? "INR"))
                    .keyboardType(.decimalPad)
                    .focused($amountIsFocused)
                    
                    Picker("no of peoples" ,selection: $numberOfPeople){
                        ForEach(2..<10){
                            Text("\($0) no of people")
                        }
                    }
                }
                
                Section{
                    
                    
                    Picker("Tips percentage" ,selection: $tipPercentage){
                        ForEach(tipPercentages,id: \.self){
                            Text($0,format:.percent)
                        }
                    }.pickerStyle(.segmented)
                } header: {
                    Text("how much tips you want to leave")
                }
                
                
                Section{
                    Text(totalPerPerson,
                         format: .currency(code: Locale.current.currency?.identifier ?? "INR"))
                }
            }
            .navigationTitle("We Spilt")
            .toolbar{
                ToolbarItemGroup(placement: .keyboard){
                    Spacer()
                    Button("Done "){
                        amountIsFocused = false
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
