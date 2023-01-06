//
//  CheckOutView.swift
//  days100
//
//  Created by HEMANTH on 03/01/23.
//

import SwiftUI

struct CheckoutView: View {
    
    @ObservedObject var order : Order
    
    @State var isAlertPresent = false
    
    @State var alertMessage = ""
    
    
    var body: some View {
        ScrollView {
            VStack {
                AsyncImage(url: URL(string: "https://hws.dev/img/cupcakes@3x.jpg")) { phase in
                    if let image =  phase.image {
                        image
                            .resizable()
                            .scaledToFit()
                    } else if phase.error != nil {
                        Text("Failed To load")
                    } else {
                        ProgressView()
                    }
                }
                .frame(height: 233)
                
                Text("Your total is \(order.cost, format: .currency(code: "USD"))")
                    .font(.title)
                
                Button("Place Order") {
                    Task{
                     
                        await placeOrder()
                        
                    }
                }
                .padding()
            }
        }
        .navigationTitle("Check out")
        .navigationBarTitleDisplayMode(.inline)
        .alert("Thank you", isPresented: $isAlertPresent){
            Button("ok"){
                
            }
        } message: {
            Text(alertMessage)
        }
    }
    
    
    func placeOrder() async {
        
        guard let encode = try? JSONEncoder().encode(order) else {
            print("failed to encode")
            return
        }
        
        let url = URL(string: "https://reqres.in/api/cupcakes")!
        var request = URLRequest(url: url)
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        request.httpMethod = "POST"
        
        do {
           let (data,_) = try await URLSession.shared.upload(for: request, from: encode)
            
            let decodedOrder = try JSONDecoder().decode(Order.self, from: data)
            
            alertMessage = "your order for \(decodedOrder.quantity)x \(Order.types[decodedOrder.type].lowercased())  cakes is on the way"
            isAlertPresent = true
        } catch {
            print("checkout failed")
        }
        
    }
}


struct CheckoutView_Previews: PreviewProvider {
    static var previews: some View {
        CheckoutView(order: Order() )
    }
}
