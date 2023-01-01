//
//  ImageDemoView.swift
//  days100
//
//  Created by HEMANTH on 01/01/23.
//

import SwiftUI

struct ImageDemoView: View {
    var body: some View {
        GeometryReader{ geo in
            Image("brock")
                .resizable()
                .scaledToFit()
                .frame(width: geo.size.width * 0.8 ,height: 300)
        }
         
    }
}

struct ImageDemoView_Previews: PreviewProvider {
    static var previews: some View {
        ImageDemoView()
    }
}
