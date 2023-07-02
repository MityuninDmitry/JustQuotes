//
//  QuoteViewMode.swift
//  JustQuotes
//
//  Created by Dmitry Mityunin on 7/2/23.
//

import Foundation

class QuoteViewModel: ObservableObject {
    @Injected var kanyeAPI: KanyeAPI?
    
    @Published var text: String = ""
    
    func getQuote() {
        Task { @MainActor in
            let quote = await (kanyeAPI?.makeRequest())!
            text = quote.quote
        }
    }
    
    init() {
        text = ""
    }
    
    
}
