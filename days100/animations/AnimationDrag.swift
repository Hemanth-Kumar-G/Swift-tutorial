//
//  AnimationDrag.swift
//  days100
//
//  Created by HEMANTH on 31/12/22.
//

import SwiftUI

struct AnimationDrag: View {
    let letters = Array("Hello , Hemanth")
    
    @State var enabled = true
    @State var dragAmpunt = CGSize.zero
    
    
    var body: some View {
        HStack(spacing: 0){
            ForEach(0..<letters.count){  num in
                Text(String(letters[num]))
                    .font(.title)
                   
                    .background(enabled ? .red : .blue)
                    .offset(dragAmpunt)
                    .animation(.default
                        .delay(Double(num)/20),
                               value: dragAmpunt)
                    
                
                
            }
            
        }
        .gesture(
            DragGesture()
                .onChanged{
                    dragAmpunt = $0.translation
                }
                .onEnded { _ in
                    dragAmpunt = .zero
                    enabled.toggle()
                    
                }
        )
    }
}

struct AnimationDrag_Previews: PreviewProvider {
    static var previews: some View {
        AnimationDrag()
    }
}
