//
//  Bunde_Decodable.swift
//  days100
//
//  Created by HEMANTH on 01/01/23.
//

import Foundation

extension Bundle{
    
    func decode<T :Codable>(_ file:String) -> T{
        
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("failed to locate file \(file) in bundle")
        }
        
        guard let data = try? Data(contentsOf :url) else {
            fatalError("failed to load  \(file) in bundle")
        }
        
        let decoder = JSONDecoder()
        let formatter = DateFormatter()
        formatter.dateFormat = "y-MM-dd"
        decoder.dateDecodingStrategy = .formatted(formatter)

        
        guard  let loaded = try? decoder.decode(T.self, from: data) else {
            fatalError("failed to decode  \(file) in bundle")
        }
        
        return loaded
    }
}
