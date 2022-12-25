//
//  ContentView.swift
//  days100
//
//  Created by HEMANTH on 24/12/22.
//

import SwiftUI

struct ContentView: View {
    
    
    @State var count=0
    @State var textValue="abc"
    
    let list = ["hemanth","ajay","jnanesh","abc"]
    @State var selectedValue = "jnanesh"
    var body: some View {
        NavigationView{
            
            Form {
                
                Section("Nodi swami"){
                    Picker("selected value ", selection:$selectedValue ){
                        ForEach(list, id: \.self){
                            Text($0)
                        }
                    }
                }
                
                Text("Hello, world!")
                
                Button("count \(count) \(textValue)"){
                    count += 1
                }
                
                TextField("enter something", text:$textValue)
                
                ForEach(0..<10) {
                    Text("\($0)")
                    
                }
            }
            .navigationTitle("Title")
            .navigationBarTitleDisplayMode(NavigationBarItem.TitleDisplayMode.large)
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
