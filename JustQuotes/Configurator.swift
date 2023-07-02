//
//  Configurator.swift
//  JustQuotes
//
//  Created by Dmitry Mityunin on 7/2/23.
//

import Foundation

class Configurator {
    static var shared = Configurator()
    
    func registerServices() {
        ServiceLocator.shared.addService(KanyeAPI(url: "https://api.kanye.rest"))
        
    }
}
