//
//  DocumentDirectoryUIView.swift
//  days100
//
//  Created by HEMANTH on 21/01/23.
//

import SwiftUI

struct DocumentDirectoryUIView: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .onTapGesture(perform: {
                let str = " Text Message"
                let url = getDocumentsDirectory().appendingPathExtension("message.txt")
                
                do{
                    try str.write(to: url , atomically: true,encoding: .utf8)
                    
                    let input = try String(contentsOf: url)
                    print(input)
                } catch {
                    print(error.localizedDescription)
                }
            })
    }
    
    
    func getDocumentsDirectory() -> URL{
        
        let path = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        
        return path[0]
    }
}

struct DocumentDirectoryUIView_Previews: PreviewProvider {
    static var previews: some View {
        DocumentDirectoryUIView()
    }
}
