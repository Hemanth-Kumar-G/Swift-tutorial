//
//  Animations.swift
//  days100
//
//  Created by HEMANTH on 31/12/22.
//

import SwiftUI

struct Animations: View {
    
    @State private var animationValue = 1.0
    var body: some View {
        
        Button("tap me"){
            animationValue += 0.2
        }
        .padding(40)
        .background(.red)
        .foregroundColor(.black)
        .clipShape(Circle())
        .overlay(
            Circle()
                
                .stroke(.red)
                .scaleEffect(animationValue)
                .opacity(2-animationValue)
                .animation(.easeIn(duration: 1)
                    .repeatForever(autoreverses:false),
                           value: animationValue)
        )
        //        .scaleEffect(animationValue)
        
        //        .animation(.interpolatingSpring(stiffness: 50, damping: 1.0), value: animationValue)
        //        .blur(radius: (animationValue-1)*2)
        
    }
}

struct Animations_Previews: PreviewProvider {
    static var previews: some View {
        Animations()
    }
}
