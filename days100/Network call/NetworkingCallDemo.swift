//
//  NetworkingCallDemo.swift
//  days100
//
//  Created by HEMANTH on 02/01/23.
//

import SwiftUI


struct Response :Codable {
    var results : [Result]
}

struct Result :Codable{
    var trackId :Int
    var trackName : String
    var collectionName : String
}

struct NetworkingCallDemo: View {
    
    @State  private var results = [Result]()
    
    var body: some View {
        NavigationView{
            List(results, id: \.trackId){ result in
                VStack(alignment: .leading)  {
                    Text(result.trackName)
                        .font(.headline)
                    Text(result.collectionName)
                        .font(.caption)
                    
                }
                
            }.task {
                await loadData()
            }.navigationTitle("Data from Api")
        }
    }
    
    func loadData() async {
        
        guard let url  = URL(string:"https://itunes.apple.com/search?term=taylor+swift&entity=song") else {
            print("INVALID URL check ")
            return
        }
        
        do{
            let (data,_) =   try await URLSession.shared.data(from: url)
            
            if let decodedData = try? JSONDecoder().decode(Response.self, from: data){
                print(decodedData)
                results = decodedData.results
            }
         
        } catch{
            print("Invalid Data")
        }
    }
}

struct NetworkingCallDemo_Previews: PreviewProvider {
    static var previews: some View {
        NetworkingCallDemo()
    }
}
