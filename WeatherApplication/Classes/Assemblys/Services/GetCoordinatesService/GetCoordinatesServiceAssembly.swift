//
//  GetCoordinatesServiceAssembly.swift
//  WeatherApplication
//
//  Created by Victor on 25.02.2022
//	
//

import Foundation

class GetCoordinatesServiceAssembly: Assembly {
    func build() -> GetCoordinatesServiceType {
        let service = GetCoordinatesService()
        return service
    }
}
