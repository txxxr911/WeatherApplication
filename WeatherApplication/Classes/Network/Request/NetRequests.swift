//
//  NetRequests.swift
//  WeatherApplication
//
//  Created by Victor on 25.02.2022
//  
//

import Foundation

protocol RequstModelSerealizable {
    func parameters() -> [String: Any]
    func body() -> Data
}

extension RequstModelSerealizable {
    func parameters() -> [String: Any] { return [:] }
    func body() -> Data { return Data() }
}
