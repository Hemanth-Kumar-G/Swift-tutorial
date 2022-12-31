//
//  AnimationRotation#d.swift
//  days100
//
//  Created by HEMANTH on 31/12/22.
//

import SwiftUI

struct AnimationRotation3d: View {
    
    @State var animateAmount = 0.0
    
    var body: some View {
        Button("tap to rotate"){
            withAnimation(.interpolatingSpring(stiffness: 5, damping: 1)){
                animateAmount += 360
                
            }
        }
        . padding(50)
        .background(.red)
        
        .foregroundColor(.white)
        .clipShape(Circle())
        .rotation3DEffect(.degrees(animateAmount), axis: (x:0,y:1,z:0))
    }
}

struct AnimationRotation_d_Previews: PreviewProvider {
    static var previews: some View {
        AnimationRotation3d()
    }
}
