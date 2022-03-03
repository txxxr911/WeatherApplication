//
//  WeatherInteractor.swift
//  WeatherApp
//
//  Created by Victor on 21.02.2022.
//

import Foundation

protocol AnyInteractor {
    var presenter: AnyPresenter? {get set}
    var getCoordinatesService: GetCoordinatesService? {get}
    var getWeatherDataService: GetWeatherDataService? {get}
    var dataStorageService: DataStorageService? {get set}
    func getCoordinates()
    func getWeatherData(latitude: Double, longtitude: Double)
    
    
}

class WeatherInteractor: AnyInteractor {
    var presenter: AnyPresenter?
    var getCoordinatesService: GetCoordinatesService?
    var getWeatherDataService: GetWeatherDataService?
    var dataStorageService: DataStorageService?
    
    func getCoordinates() {
        
    }
    
    func getWeatherData(latitude: Double, longtitude: Double) {
        print("Imma too")
        presenter?.abobus()
    }
    
}
