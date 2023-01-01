//
//  UserDefaultDemo.swift
//  days100
//
//  Created by HEMANTH on 01/01/23.
//

import SwiftUI

let _TAP = "tap"
let _USER = "user_studend"


struct student :Codable{
    var name:String
    var age:Int
}

/**
 UserDefaults  /AppStorage wrapper on  userDefaults
 */
struct UserDefaultDemo: View {
    
    @AppStorage(_TAP) var count = 0
    //    @State var count = UserDefaults.standard.integer(forKey: _TAP)

    
    var body: some View {
        VStack{
            Button("count is \(count)"){
                count += 1
                //            UserDefaults.standard.set(count, forKey: _TAP)
                
                if let userJson =  try? JSONEncoder().encode(student(name: "jnanesh", age: 26)){
                    UserDefaults.standard.set(userJson, forKey: _USER)
                }
            }

            if let savedPerson =  UserDefaults.standard.object(forKey: _USER) as? Data {
                let decoder = JSONDecoder()
                if let user = try? decoder.decode(student.self, from: savedPerson) {
                    Text("user is \(user.name)")
                }
            }
            
            
 
            
        }
    }
    
}

struct UserDefaultDemo_Previews: PreviewProvider {
    static var previews: some View {
        UserDefaultDemo()
    }
}
