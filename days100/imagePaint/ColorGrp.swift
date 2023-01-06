//
//  ColorGrp.swift
//  days100
//
//  Created by HEMANTH on 02/01/23.
//

import SwiftUI


struct ColorCycligCircle :View{
    
    var amount = 0.0
    var steps = 100
    
    var body: some View{
        
        ZStack{
            ForEach(0 ..< steps , id: \.self){ value in
                
                Circle()
                    .inset(by: Double(value))
                    .strokeBorder(
                        LinearGradient(colors: [color(for: value, brightness: 1) ,
                                                color(for: value, brightness: 0.5) ],
                                       startPoint: .top, endPoint: .bottom)
                        , lineWidth: 2)
            }
        }.drawingGroup() // for smooth performance
    }
    
    func color(for value :Int , brightness : Double) -> Color{
        var targetHue = Double(value) / Double(steps) + amount
        
        if targetHue > 1{
            targetHue -= 1
        }
        
        return Color(hue: targetHue, saturation: 1, brightness: brightness)
    }
}


struct ColorGrp: View {
    @State var colorCycle = 0.0
    var body: some View {
        VStack{
            Spacer()
            ColorCycligCircle(amount: colorCycle)
                .frame(width: 300,height: 300)
            
            Slider(value: $colorCycle )
            Spacer()
        }
        .padding()
        .preferredColorScheme(.dark)
    }
}

struct ColorGrp_Previews: PreviewProvider {
    static var previews: some View {
        ColorGrp()
    }
}
