//
//  FileJsonDecoderView.swift
//  days100
//
//  Created by HEMANTH on 01/01/23.
//

import SwiftUI

struct FileJsonDecoderView: View {
    
    let astonuats :[String:Astronaut] = Bundle.main.decode("astronauts.json")
    
    let missions : [Mission] = Bundle.main.decode("missions.json")
    
    let columns = [
        GridItem(.adaptive(minimum: 150))
    ]
    
    var body: some View {
        
        NavigationView{
            ScrollView{
                LazyVGrid(columns: columns){
                    ForEach(missions, id: \.id) { mission in
                        NavigationLink{
                          MissionView(mission: mission, astronauts: astonuats)
                        } label: {
                            VStack{
                                Image(mission.image)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 100,height: 100)
                                    .padding()
                                
                                VStack{
                                    Text(mission.displayName)
                                        .font(.headline)
                                        .foregroundColor(.white)
                                    
                                    
                                    Text("\(mission.formattedLaunchDate)")
                                        .font(.caption)
                                        .foregroundColor(.white)
                                    
                                }
                                .frame(maxWidth: .infinity)
                                .background(.darkBackground)
                            }
                            .overlay{
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(.lightBackground)
                            }
                        }
                    }
                }   .padding()
            }
         
            .navigationTitle("Moon Shot")
            .preferredColorScheme(.dark)
        }
    }
}

struct FileJsonDecoderView_Previews: PreviewProvider {
    static var previews: some View {
        FileJsonDecoderView()
    }
}
