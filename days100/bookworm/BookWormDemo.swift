//
//  BookWormDemo.swift
//  days100
//
//  Created by HEMANTH on 07/01/23.
//

import SwiftUI

struct BookWormDemo: View {
    
    @Environment(\.managedObjectContext) var moc
    
    @State private var lastNameFilter = "A"
    
    var body: some View {
        VStack{
            Button("Add Examples"){
                let taylor = Singer(context: moc)
                taylor.firstName = "Taylor"
                taylor.lastName = "Swift"
                
                let ed = Singer(context: moc)
                ed.firstName = "Ed"
                ed.lastName = "Sheeran"
                
                let adele = Singer(context: moc)
                adele.firstName = "Adele"
                adele.lastName = "Adkins"
            }
            
            Button("show A"){
                lastNameFilter = "A"
            }
            Button("show S"){
                lastNameFilter = "S"
            }
        }
    }
}

struct BookWormDemo_Previews: PreviewProvider {
    static var previews: some View {
        BookWormDemo()
    }
}
