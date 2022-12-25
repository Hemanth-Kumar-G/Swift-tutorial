//
//  ContentView.swift
//  days100
//
//  Created by HEMANTH on 24/12/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Spacer()
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Spacer()
            HStack{
                Spacer()
                Text("Hello, world!").frame(width: .infinity,alignment: .trailing)}
            Spacer()
            
        }.frame(width: .infinity,alignment: .trailing)
            .padding()
        
        
        
        ZStack{
            VStack(spacing: 0){
                Color.red
                Color.indigo
            }.ignoresSafeArea()
            
            Text("content")
                .font(.system(size: 90))
                .padding(50)
                .foregroundColor(.secondary)
                .background(.ultraThinMaterial)
            
        }
        
        LinearGradient(gradient: Gradient(stops: [Gradient.Stop(color: .white, location: 0.1),
                                                  Gradient.Stop(color: .blue, location: 0.90)]), startPoint: .top, endPoint: .bottom)
        
        RadialGradient(gradient: Gradient(colors: [.blue,.black]), center: .center, startRadius: 100, endRadius: 200)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
