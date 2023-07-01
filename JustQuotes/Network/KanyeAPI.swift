//
//  KanyeAPI.swift
//  JustQuotes
//
//  Created by Dmitry Mityunin on 7/1/23.
//

import Foundation


class KanyeAPI {
    let url = URL(string: "https://api.kanye.rest")!
    
    
    func loadQuote() async -> String {
        do {
            let (data, response) = try await URLSession.shared.data(from: url)
            
            let responseData = response as! HTTPURLResponse
            
            if responseData.statusCode != 200 {
                return ""
            }
            
            let quote =  try? JSONDecoder().decode(Quote.self, from: data)
            
            return quote!.quote
        } catch {
            
        }
        
        
        return ""
       
    }
}


struct Quote: Codable {
    let quote: String
}

