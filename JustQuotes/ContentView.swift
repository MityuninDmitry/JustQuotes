//
//  ContentView.swift
//  JustQuotes
//
//  Created by Dmitry Mityunin on 7/1/23.
//

import SwiftUI

struct ContentView: View {
    @StateObject var quoteViewModel = QuoteViewModel()
    
    var body: some View {
        VStack {
            Spacer()
            
            Text("\(quoteViewModel.text)")
            
            Spacer()
            
            Button {
                quoteViewModel.getQuote()
            } label: {
                Text("ANOTHER QUOTE")
            }
        }
        .padding()
        .onAppear {
            quoteViewModel.getQuote()
        }
    }
    
    mutating func loadQuote() {
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
