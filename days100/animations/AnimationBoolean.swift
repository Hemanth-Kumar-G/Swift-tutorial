//
//  AnimationBoolean.swift
//  days100
//
//  Created by HEMANTH on 31/12/22.
//

import SwiftUI

struct AnimationBoolean: View  {
    @State var enabled = true
    
    var body: some View {
        Button(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/){
            enabled.toggle()
        }
        .frame(width: 200,height: 200)
        .background(enabled ? .blue : .red)
        .foregroundColor(.white)
        .clipShape(RoundedRectangle(cornerRadius: enabled ? 30.0 : 0 ))
        .animation(.interpolatingSpring(stiffness: 4, damping: 1), value: enabled)
    }
}

struct AnimationBoolean_Previews: PreviewProvider {
    static var previews: some View {
        AnimationBoolean()
    }
}
