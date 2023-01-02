//
//  DrawingDemo.swift
//  days100
//
//  Created by HEMANTH on 02/01/23.
//

import SwiftUI

struct DrawingDemo: View {
    var body: some View {
        ZStack{
            Image("brock")
                .blur(radius: 10)
//                .colorMultiply(.cyan)
//            Rectangle()
//                .fill(.red)
//                .blendMode(.colorBurn)
        }
    }
}

struct DrawingDemo_Previews: PreviewProvider {
    static var previews: some View {
        DrawingDemo()
    }
}
