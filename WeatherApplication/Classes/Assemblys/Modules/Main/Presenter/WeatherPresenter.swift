//
//  WeatherPresentor.swift
//  WeatherApp
//
//  Created by Victor on 21.02.2022.
//

import Foundation
protocol AnyPresenter {
    var view: AnyView? {get set}
    var router: AnyRouter? {get set}
    var interactor: AnyInteractor? {get set}
    //func interactorDidFetchData(with result: Result<[Weather], Error>)
    func abobus()
}

class WeatherPresenter: AnyPresenter, MainModuleOutput {
    var view: AnyView?
    var router: AnyRouter?
    var interactor: AnyInteractor?
    weak var viewM: MainViewInput?
//    func interactorDidFetchData(with result: Result<[Weather], Error>) {
//        
//    }
    
    func abobus() {
        print("And I'm")
        view?.haha()
    }
}

// MARK: Private
extension WeatherPresenter {
    
}

// MARK: Module Input
extension WeatherPresenter: MainModuleInput {
    
}

// MARK: View Output
extension WeatherPresenter: MainViewOutput {
    func viewDidLoad() {
        //view?.set(title: "Main")
        print("Oh my")
    }
}
