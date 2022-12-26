//
//  GridModifier.swift
//  days100
//
//  Created by HEMANTH on 26/12/22.
//

import SwiftUI


struct GirdStack<Content :View> :View {
    
    let row:Int
    let columns:Int
    @ViewBuilder let content : (Int,Int) ->Content
    
    
    var body: some View{
       
        VStack{
            ForEach(0..<row){row in
                
                HStack{
                    
                    ForEach(0..<columns){ column in
                        Spacer()
                        content(row, column)
                        Spacer()
                    }
                }
            }
        }
    }
}


struct GridModifier: View {
    var body: some View {
        GirdStack(row: 4, columns: 4 ){ row , columns in
      
            Text("\(row)\(columns)")
          
        }
    }
}

struct GridModifier_Previews: PreviewProvider {
    static var previews: some View {
        GridModifier()
    }
}
