//
//  AnimationsSecond.swift
//  days100
//
//  Created by HEMANTH on 31/12/22.
//

import SwiftUI

struct AnimationsSecond: View {
    
    @State private var animatedValue = 1.0
    
    
    
    var body: some View {
        
        VStack{
            
            Stepper("click to change value",
                    value: $animatedValue.animation(
                        .easeInOut
                            .repeatForever()),
                    in: 1...10)
            Spacer()
            Button("tap me"){
                
            }
            .padding(40)
            .background(.red)
            .clipShape(Circle())
            .scaleEffect(animatedValue)
            .foregroundColor(.white)
            
        }
    }
}

struct AnimationsSecond_Previews: PreviewProvider {
    static var previews: some View {
        AnimationsSecond()
    }
}
