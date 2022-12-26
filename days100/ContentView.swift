//
//  ContentView.swift
//  days100
//
//  Created by HEMANTH on 24/12/22.
//

import SwiftUI


struct Title : ViewModifier{
    
    func body(content: Content) -> some View {
        content
            .font(.title)
            .foregroundColor(.white)
            .padding()
            .background(.blue)
            .clipShape(RoundedRectangle(cornerRadius: 10 ))
    }
}

extension View {
    
    func titleStyle() -> some View{
        modifier(Title())
    }
    
    func waterMark(with text :String) -> some View{
        modifier(WaterMark(text: text))
    }
}

struct WaterMark : ViewModifier {
    
    let text: String
    
    func body(content: Content) -> some View {
        ZStack(alignment: .bottomTrailing) {
            content
            Text(text)
                .font(.caption)
                .foregroundColor(.white)
                .padding(5)
                .background(.black)
        }
    }
}



struct ContentView: View {
    var body: some View {
        Text("Hello, world!")
            .titleStyle()
        
        // or
        
        Text("Hello, world!").modifier(Title())
        
        
        Color.blue
            .frame(width: 300,height: 300)
            .waterMark(with: "waterMarker")
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
