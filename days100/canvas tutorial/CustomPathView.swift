//
//  CustomPathView.swift
//  days100
//
//  Created by HEMANTH on 02/01/23.
//

import SwiftUI

struct CustomPathView: View {
    var body: some View {
        Path{ path in
            
            path.move(to: CGPoint(x: 200, y: 100))
            path.addLine(to :CGPoint(x: 100, y:   300))
            path.addLine(to :CGPoint(x: 300, y:   300))
            path.addLine(to :CGPoint(x: 200, y:   100))
            path.closeSubpath()
        }
//        .fill(.red)
//        .stroke(.blue,lineWidth: 5)
        .stroke(.blue,style: StrokeStyle(lineWidth: 4,lineCap: .round,dash: [CGFloat(20)]))
    }
}

struct CustomPathView_Previews: PreviewProvider {
    static var previews: some View {
        CustomPathView()
    }
}
