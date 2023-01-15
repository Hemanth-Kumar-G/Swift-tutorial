//
//  ConfirmationDialogExample.swift
//  days100
//
//  Created by HEMANTH on 14/01/23.
//

import SwiftUI

struct ConfirmationDialogExample: View {
    
    @State private var showingConfirmationDialog = false
    @State private var backgroundColor = Color.white
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .frame(width: 300,height: 300)
            .background(backgroundColor)
            .onTapGesture(perform: {
                showingConfirmationDialog = true
            })
            .confirmationDialog("Change color", isPresented: $showingConfirmationDialog, actions: {
                
                Button("red"){backgroundColor = Color.red}
                Button("greenn"){backgroundColor = Color.green}
                Button("gray"){backgroundColor = Color.gray}
                
            }, message: {
                Text("Select a new color")
            })
    }
}

struct ConfirmationDialogExample_Previews: PreviewProvider {
    static var previews: some View {
        ConfirmationDialogExample()
    }
}
