//
//  NavigationLinkDemo.swift
//  days100
//
//  Created by HEMANTH on 01/01/23.
//

import SwiftUI

struct NavigationLinkDemo: View {
    var body: some View {
        NavigationView{
            
            List(0..<100) { num in
                NavigationLink{
                    Text("detail of \(num)")
                } label: {
                    Text("title Number \(num)")
                }
            }
            .navigationTitle("Items")
            .navigationBarTitleDisplayMode(.large)
        
            

        }
    }
}

struct NavigationLinkDemo_Previews: PreviewProvider {
    static var previews: some View {
        NavigationLinkDemo()
    }
}
