//
//  AnimationCustom.swift
//  days100
//
//  Created by HEMANTH on 31/12/22.
//

import SwiftUI


struct CornerRotateModifier : ViewModifier{
    
    let amount:Double
    let anchor:UnitPoint
    
    func body(content: Content) -> some View {
        content
            .rotationEffect(.degrees(amount),anchor: anchor)
            .clipped()
    }
}

extension AnyTransition {
    
    static var pivot : AnyTransition{
        .modifier(active: CornerRotateModifier(amount: -90, anchor: .topLeading), identity: CornerRotateModifier(amount: 0, anchor: .topLeading))
    }
}

struct AnimationCustom: View {
    
    @State var showRedBox = false
    
    var body: some View {
        ZStack{
            
            Rectangle()
                .fill(.red)
                .frame(width: 100,height: 100)
                
            if showRedBox {
                Rectangle()
                    .fill(.blue)
                    .frame(width: 100,height: 100)
                    .transition(.pivot)
                
            }
        }
        .onTapGesture {
            withAnimation{
            showRedBox.toggle(
            )}
        }
    }
}

struct AnimationCustom_Previews: PreviewProvider {
    static var previews: some View {
        AnimationCustom()
    }
}
