//
//  AddrView.swift
//  days100
//
//  Created by HEMANTH on 02/01/23.
//

import SwiftUI

struct AddrView: View {
    
    @ObservedObject var order : Order
    
    var body: some View {
     
            Form{
                Section{
                    TextField("Name", text: $order.name)
                    TextField("Street Address", text: $order.streetAddress)
                    TextField("City", text: $order.city)
                    TextField("ZipCode", text: $order.zip)
                }
                Section{
                    NavigationLink{
                        CheckoutView(order: order )
                    } label: {
                        Text("CheckOut")
                    }
                }.disabled(order.hasValidAddress == false)
            
            }
            .navigationTitle("Delivery Address")
            .navigationBarTitleDisplayMode(.inline)
            .preferredColorScheme(.dark)
        }
    
}

struct AddrView_Previews: PreviewProvider {
    static var previews: some View {
        
        AddrView(order:Order())
    }
}
