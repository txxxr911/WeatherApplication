//
//  DataStorageServiceAssembly.swift
//  WeatherApplication
//
//  Created by Victor on 25.02.2022
//	
//

import Foundation

class DataStorageServiceAssembly: Assembly {
    func build() -> DataStorageServiceType {
        let service = DataStorageService()
        return service
    }
}
