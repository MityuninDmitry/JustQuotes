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
    
    func loadQuote() {
        Task { @MainActor in
            text = await (kanyeAPI?.loadQuote())!
            
        }
        
    }
    
    init() {
        text = ""
    }
    
    
}
