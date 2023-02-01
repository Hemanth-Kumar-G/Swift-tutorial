//
//  SwiftUIView.swift
//  days100
//
//  Created by HEMANTH on 01/02/23.
//

import SwiftUI

struct TabLayoutDemo: View {
    @State var selectedTab=""
  
    var body: some View {
        ZStack{
            TabView(selection:$selectedTab ){
                Text("tab1").tabItem{
                    Label("1", systemImage: "star")
                }
                Text("tab2").tabItem{
                    Label("2", systemImage: "star")
                }.tag("2")
            }
        }
    }
}

struct TabLayoutDemo_Previews: PreviewProvider {
    static var previews: some View {
        TabLayoutDemo(selectedTab: "2")
    }
}
