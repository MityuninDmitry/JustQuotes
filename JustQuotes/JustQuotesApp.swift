//
//  JustQuotesApp.swift
//  JustQuotes
//
//  Created by Dmitry Mityunin on 7/1/23.
//

import SwiftUI

@main
struct JustQuotesApp: App {
    
    init() {
        Configurator.shared.registerServices()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
