//
//  SwiftUIView.swift
//  days100
//
//  Created by HEMANTH on 02/01/23.
//

import SwiftUI

struct Triangle :Shape{
    
    func path(in rect: CGRect) -> Path {
        
        var path = Path()
        
        path.move(to: CGPoint(x:  rect.midX, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.midX, y: rect.minX))
        path.closeSubpath()
        return path
    }
}

struct Arc :InsettableShape{
    
    let startAngle : Angle
    let endAngle : Angle
    let clockwise :Bool
    var insetAmount = 0.0
    
    func path(in rect: CGRect) -> Path {
        
        let rotationAdjustment = Angle(degrees: 90)
        let modifiedStart = startAngle - rotationAdjustment
        let modifiedEnd = endAngle - rotationAdjustment
        var path = Path()
        
        path.addArc(center: CGPoint(x: rect.midX, y: rect.midY), radius: rect.width/2, startAngle: modifiedStart, endAngle: modifiedEnd, clockwise: !clockwise)
        return path
    }
    
    func inset(by amount : CGFloat) -> some InsettableShape {
        var arc = self
        arc.insetAmount += amount
        return arc
    }
}

struct ShapeSampleView: View {
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 40)
                .fill(.cyan).padding()
            VStack{
                Spacer()
                Triangle()
                //            .fill(.red)
                    .stroke(.red ,style: StrokeStyle(lineWidth: 3))
                    .frame(width:200,height: 200)
                
                Spacer()
                
                Arc(startAngle: .degrees(0), endAngle: .degrees(270), clockwise: true)
                    .stroke(.blue ,style: StrokeStyle(lineWidth: 5))
                    .frame(width:200,height: 200)
                
                Spacer()
                
                
            }}
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        ShapeSampleView()
    }
}
