//
//  DeleteFromListDemo.swift
//  days100
//
//  Created by HEMANTH on 31/12/22.
//

import SwiftUI

struct DeleteFromListDemo: View {
    
    @State var nums = [Int]()
    @State var currentNumber = 1
    var body: some View {
        NavigationView{
            VStack{
               
                List{
                    ForEach(nums, id: \.self){ num in
                        Text("this numbe \(num)")
                    }.onDelete(perform : { offset  in
                        nums.remove(atOffsets: offset)
                        
                    })
                }
                
                Button("add number"){
                    withAnimation{
                        nums.append(currentNumber)
                        currentNumber += 1
                    }
                }
            }
            .navigationTitle("delete")
            .toolbar {
                EditButton()
            }
        }
    }
}

struct DeleteFromListDemo_Previews: PreviewProvider {
    static var previews: some View {
        DeleteFromListDemo()
    }
}
