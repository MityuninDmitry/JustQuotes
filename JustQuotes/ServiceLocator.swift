//
//  ServiceLocator.swift
//  JustQuotes
//
//  Created by Dmitry Mityunin on 7/1/23.
//

import Foundation


class ServiceLocator {
    static var shared = ServiceLocator()
    
    private var services: [String: Any] = [:]
    
    private func typeName(of some: Any) -> String {
        return "\(type(of: some))"
    }
    
    func addService<T: AnyObject>(_ service: T)  {
        let key = typeName(of: T.self)
        services[key] = service
    }
    
    func getService<T: AnyObject> () -> T?  {
        let key = typeName(of: T.self)
        return services[key] as? T
    }
}
