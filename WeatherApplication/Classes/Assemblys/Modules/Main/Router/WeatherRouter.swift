//
//  WeatherRouter.swift
//  WeatherApp
//
//  Created by Victor on 21.02.2022.
//

import Foundation
import UIKit

 typealias EntryPoint = AnyView & UIViewController

protocol AnyRouter {
    var entry: EntryPoint? {get}
    static func start() -> AnyRouter
}

class WeatherRouter: AnyRouter {
    
    var entry: EntryPoint?
    
    static func start() -> AnyRouter {
        let router = WeatherRouter()
        
        var view: AnyView = WeatherView()
        var presenter: AnyPresenter = WeatherPresenter()
        var interactor: AnyInteractor = WeatherInteractor()
        var getCoordinatesService: GetCoordinatesService = GetCoordinatesService()
       // var getWeatherService: GetWeatherService = GetWeatherService()
        
        
        view.presenter = presenter
        interactor.presenter = presenter
        presenter.router = router
        presenter.view = view
        presenter.interactor = interactor
        //getCoordinatesService.interactor = interactor
        //getWeatherService.interactor = interactor
        
        router.entry = view as? EntryPoint 
        print("ahaha")
        
        //getCoordinatesService.getCoordinates()
        
        return router
    }
}
