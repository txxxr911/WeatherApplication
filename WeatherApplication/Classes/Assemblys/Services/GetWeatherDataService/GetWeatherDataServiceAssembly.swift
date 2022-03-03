//
//  GetWeatherDataServiceAssembly.swift
//  WeatherApplication
//
//  Created by Victor on 25.02.2022
//	
//

import Foundation

class GetWeatherDataServiceAssembly: Assembly {
    func build() -> GetWeatherDataServiceType {
        let service = GetWeatherDataService()
        return service
    }
}
