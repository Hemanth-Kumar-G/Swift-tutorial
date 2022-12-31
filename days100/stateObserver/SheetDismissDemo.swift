//
//  SheetDismissDemo.swift
//  days100
//
//  Created by HEMANTH on 31/12/22.
//

import SwiftUI

struct secondView :View{
    

    @Environment(\.dismiss) var dismiss
    
    var body: some View{
        Text("this is bottom sheeet").onTapGesture {
            dismiss()
        }
    }
}

struct SheetDismissDemo: View {
    @State var isSheetShowing = false
    var body: some View {
        Button("click for sheet"){
            isSheetShowing.toggle()
        }
        .sheet(isPresented: $isSheetShowing ){
            secondView()
        }
        
    }
}

struct SheetDismissDemo_Previews: PreviewProvider {
    static var previews: some View {
        SheetDismissDemo()
    }
}
