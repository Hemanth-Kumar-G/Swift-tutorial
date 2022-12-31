//
//  StateObersverDemo.swift
//  days100
//
//  Created by HEMANTH on 31/12/22.
//

import SwiftUI


class User: ObservableObject {
    @Published var firstName = "hemanth"
    @Published var  lastName = "kumar"
}

struct StateObersverDemo: View {
    
    @StateObject var user = User()
    
    var body: some View {
        VStack{
            Text("name is \(user.firstName)  \(user.lastName)")
            Spacer()
                .frame(height: 20)
            TextField("enter the value",text:$user.firstName)
            Spacer()
                .frame(height: 20)
            TextField("enter the value",text:$user.lastName)
            
            
        }.padding()
    }
}

struct StateObersverDemo_Previews: PreviewProvider {
    static var previews: some View {
        StateObersverDemo()
    }
}
