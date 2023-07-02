//
//  KanyeAPI.swift
//  JustQuotes
//
//  Created by Dmitry Mityunin on 7/1/23.
//

import Foundation
import NetworkPackage

class KanyeAPI: AppNetwork<KanyeQuote> {
    
}



struct KanyeQuote: Codable {
    let quote: String
}

