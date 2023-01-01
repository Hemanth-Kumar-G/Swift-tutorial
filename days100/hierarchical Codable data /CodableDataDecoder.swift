//
//  CodableDataDecoder.swift
//  days100
//
//  Created by HEMANTH on 01/01/23.
//

import SwiftUI

struct UserDecode :Codable{
    let name:String
    let address : Address
}

struct Address :Codable{
    let street :String
    let city :String
}

struct CodableDataDecoder: View {
    var body: some View {
        Button("click to decode"){
            let json = """
                        {
                        "name" : "hemanth",
                        "address" : {
                            "street" : "242 ,bangalore ",
                            "city" : "bangalore"
                            }
                        }
                    """
            let data = Data(json.utf8)
            if  let user  = try? JSONDecoder().decode(UserDecode.self, from: data){
                print(user.address)
            }
        }
    }
}

struct CodableDataDecoder_Previews: PreviewProvider {
    static var previews: some View {
        CodableDataDecoder()
    }
}
