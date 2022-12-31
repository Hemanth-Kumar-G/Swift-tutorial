//
//  UserDefaultDemo.swift
//  days100
//
//  Created by HEMANTH on 01/01/23.
//

import SwiftUI

let _TAP = "tap"

/**
 UserDefaults  /AppStorage wrapper on  userDefaults
 */
struct UserDefaultDemo: View {
    
    @AppStorage(_TAP) var count = 0
//    @State var count = UserDefaults.standard.integer(forKey: _TAP)
    
    var body: some View {
        Button("count is \(count)"){
            count += 1
//            UserDefaults.standard.set(count, forKey: _TAP)
            
        }
    }
}

struct UserDefaultDemo_Previews: PreviewProvider {
    static var previews: some View {
        UserDefaultDemo()
    }
}
