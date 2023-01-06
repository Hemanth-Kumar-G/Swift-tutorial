//
//  AsyncImageDemo.swift
//  days100
//
//  Created by HEMANTH on 02/01/23.
//

import SwiftUI

struct AsyncImageDemo: View {
    var body: some View {
        AsyncImage(url: URL(string:"https://www.pinkvilla.com/files/brock_lesnar_0.jpg" )) { phase in
            
            if let image =  phase.image {
                image
                    .resizable()
                    .scaledToFit()
                
            } else if phase.error != nil {
                Text("failed to load")
            }else {
                ProgressView()
            }
        }.frame(maxWidth: .infinity,maxHeight: .infinity)
    }
}

struct AsyncImageDemo_Previews: PreviewProvider {
    static var previews: some View {
        AsyncImageDemo()
    }
}
