//
//  MainAssembly.swift
//  WeatherApplication
//
//  Created by Victor on 25.02.2022
//  
//

import UIKit

typealias MainModule = Module<MainModuleInput, MainModuleOutput>

class MainAssembly: Assembly {
    func build(coordinator: CoordinatorType) -> MainModule {
        
        // View
        //let view = MainViewController.controllerFromStoryboard(.main)
        let view = WeatherView()
        // Interactor
        let interactor = WeatherInteractor()
        
        // Router
        let router = WeatherRouter()
        
        // Presenter
        //let presenter = MainPresenter(interactor: interactor, router: router)
        let presenter = WeatherPresenter()
        
        // GetCoordinatesService
        let getCoordinatesService =  GetCoordinatesService()
        
        // GetWeatherDataService
        let getWeatherDataService = GetWeatherDataService()
        
        // DataStorageService
        let dataStorageService = DataStorageService()
        
        // Dependency Setup
        presenter.view = view
        view.presenter = presenter
        interactor.presenter = presenter
        presenter.interactor = interactor
        interactor.getCoordinatesService = getCoordinatesService
        interactor.getWeatherDataService = getWeatherDataService
        interactor.dataStorageService = dataStorageService
        
        
        //return Module(view: view, input: presenter, output: presenter)
        return Module(view: view, input: presenter, output: presenter)
    }
}
