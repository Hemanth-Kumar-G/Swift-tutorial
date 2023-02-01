//
//  SwipeActionDemo.swift
//  days100
//
//  Created by HEMANTH on 01/02/23.
//

import SwiftUI

struct SwipeActionDemo: View {
    var body: some View {
        List{
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .swipeActions(content: {
                    Button(role : .none,action: {},label:
                            {  Label("", systemImage:  "plus")})
                })
                .swipeActions(edge : .leading,
                              content: {
                    Button(role : .destructive,action: {},label:
                            {  Label("", systemImage:  "minus")})
                })
            
        }
    }
}

struct SwipeActionDemo_Previews: PreviewProvider {
    static var previews: some View {
        SwipeActionDemo()
    }
}
