//
//  ComparableCustomTypeDemp.swift
//  days100
//
//  Created by HEMANTH on 15/01/23.
//

import SwiftUI

struct UserList :Identifiable , Comparable {
  
    
    let id: UUID = UUID()
    let firstName :String
    let lastName :String
    
    static func < (lhs: UserList, rhs: UserList) -> Bool {
        lhs.firstName < rhs.firstName
    }
}

struct ComparableCustomTypeDemp: View {
    
    var userList = [
        UserList(firstName: "hemanth", lastName: "kumar"),
        UserList(firstName: "ajay", lastName: "kumar"),
        UserList(firstName: "jnanesh", lastName: "kumar")
    ].sorted()
    
    var body: some View {
        List(userList) { list in
            /*@START_MENU_TOKEN@*/Text(list.firstName)/*@END_MENU_TOKEN@*/
        }
    }
}

struct ComparableCustomTypeDemp_Previews: PreviewProvider {
    static var previews: some View {
        ComparableCustomTypeDemp()
    }
}
