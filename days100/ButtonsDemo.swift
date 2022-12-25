//
//  ButtonsDemo.swift
//  days100
//
//  Created by HEMANTH on 25/12/22.
//

import SwiftUI

struct ButtonsDemo: View {
    var body: some View {
        VStack{
            Button("Button"){}
                .buttonStyle(.bordered)
            Button("Button",role: .destructive){}
                .buttonStyle(.bordered)
            Button("Button"){}
                .buttonStyle(.borderedProminent)
                .tint(.mint)
            Button("Button",role: .destructive){}
                .buttonStyle(.borderedProminent)
            
            Button{
                
            } label: {
                Text("Click me")
                    .padding()
                    .foregroundColor(.white)
                    .background(.red)
                    .cornerRadius(15)
            }
            
            Image(systemName: "pencil")
            Label("edit profile",systemImage: "pencil")
        }
    }
}

struct ButtonsDemo_Previews: PreviewProvider {
    static var previews: some View {
        ButtonsDemo()
    }
}
