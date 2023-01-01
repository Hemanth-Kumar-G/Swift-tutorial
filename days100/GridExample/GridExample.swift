//
//  GridExample.swift
//  days100
//
//  Created by HEMANTH on 01/01/23.
//

import SwiftUI

struct GridExample: View {
    
    let layout = [
        GridItem(.adaptive(minimum: 80)),
//        GridItem(.fixed(80)),
//        GridItem(.fixed(80))
    ]
    
    var body: some View {
        ScrollView{
            LazyVGrid(columns:layout){
                ForEach(0..<1000){
                    Label("text \($0)", systemImage: "clock")
                }
            }
        }
    }
}

struct GridExample_Previews: PreviewProvider {
    static var previews: some View {
        GridExample()
    }
}
