//
//  ScrollViewDemo.swift
//  days100
//
//  Created by HEMANTH on 01/01/23.
//

import SwiftUI

struct ScrollViewDemo: View {
    var body: some View {
        ScrollView(.vertical){
            LazyVStack(spacing : 10){
                ForEach(0..<100){
                    Text("number is \($0)")
                }
            }.frame(maxWidth: .infinity)
        }
        
    }
}

struct ScrollViewDemo_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewDemo()
    }
}
