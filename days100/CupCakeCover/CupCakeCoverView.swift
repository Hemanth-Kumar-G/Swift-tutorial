//
//  CupCakeCoverView.swift
//  days100
//
//  Created by HEMANTH on 02/01/23.
//

import SwiftUI

//class Users : ObservableObject,Codable{
//
//    enum CodingKeys:CodingKey {
//        case name
//    }
//
//    @Published var name = "Hemanth kumar G"
//
//    required init(from decoder: Decoder) throws {
//        let container = try decoder.container(keyedBy: CodingKeys.self)
//        name = try container.decode(String.self, forKey: .name)
//
//    }
//
//    func encode(to encoder: Encoder) throws {
//        var container = try encoder.container(keyedBy: CodingKeys.self)
//        try container.encode(name, forKey: .name)
//    }
//
//}
//


struct CupCakeCoverView: View {
    
    @StateObject var order = Order()
    var body: some View {
        NavigationView{
            Form {
                Section{
            
                    Picker("Select the cake type ", selection: $order.type){
                        ForEach(Order.types.indices) {
                            Text(Order.types[$0])
                        }
                    }.pickerStyle(.navigationLink)
                    
                    Stepper("Number of cakes \(order.quantity)",value: $order.quantity,in : 3...20)
                }
                
                Section{
                    Toggle("Any special Request ?", isOn: $order.specialRequestEnabled.animation())
                    if(order.specialRequestEnabled){
                        Toggle("Any extra Frostig", isOn: $order.extraFrosting)
                        Toggle("Any extra sprinkles", isOn: $order.addSprinkles)
                    }
                }
                
                Section{
                    
                    NavigationLink{
                        AddrView(order: order)
                    } label: {
                        Text("Delivery details")
                    }
                }
                
                
                
            }
            .navigationTitle("Cupcake Corner")
            .preferredColorScheme(.dark)
        }
       
    }
}

struct CupCakeCoverView_Previews: PreviewProvider {
    static var previews: some View {
        CupCakeCoverView()
    }
}
