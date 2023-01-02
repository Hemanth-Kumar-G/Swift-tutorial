//
//  ImagePaintDemo.swift
//  days100
//
//  Created by HEMANTH on 02/01/23.
//

import SwiftUI

struct ImagePaintDemo: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .frame(width: 300,height: 300)
            .border(ImagePaint(image: Image("brock"),sourceRect: CGRect(x: 0, y: 0.4, width: 1, height: 0.9),scale: 0.4),width: 70)
            
    }
}

struct ImagePaintDemo_Previews: PreviewProvider {
    static var previews: some View {
        ImagePaintDemo()
    }
}
