//
//  Bundle-Decodable.swift
//  MoonShot
//
//  Created by Tamim Khan on 21/4/23.
//

import Foundation
extension Bundle{
    func decode<T: Codable>(_ file: String) -> T{
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("unable to locate \(file)")
        }
        
        guard let data = try? Data(contentsOf: url) else {
            fatalError("unable to load \(file) bundle")
        }
        
        let decoder = JSONDecoder()
        let formetter = DateFormatter()
        formetter.dateFormat = "y-mm-dd"
        decoder.dateDecodingStrategy = .formatted(formetter)
        
        guard let loaded = try? decoder.decode(T.self, from: data) else{
            fatalError("unable to decode\(file)")
        }
        return loaded
    }
    
    
    
}
