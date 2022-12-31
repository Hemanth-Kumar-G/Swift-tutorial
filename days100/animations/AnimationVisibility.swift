//
//  AnimationVisibility.swift
//  days100
//
//  Created by HEMANTH on 31/12/22.
//

import SwiftUI

struct AnimationVisibility: View {
    
    @State var showRedBox = false
    
    var body: some View {
        VStack{
            
            Button("click to show/hide"){
                withAnimation(){
                    showRedBox.toggle()
                    
                }
            }
            .buttonStyle(.borderedProminent)
            
            if showRedBox {
                Rectangle()
                    .fill(.red)
                    .frame(width: 200,height: 200)
//                    .transition(.scale)
                    .transition(.asymmetric(insertion: .scale, removal: .opacity))
                
            }
        }
    }
}

struct AnimationVisibility_Previews: PreviewProvider {
    static var previews: some View {
        AnimationVisibility()
    }
}
