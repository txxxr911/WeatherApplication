//
//  MainPresenter.swift
//  WeatherApplication
//
//  Created by Victor on 25.02.2022
//  
//

import Foundation

class MainPresenter: BasePresenter<MainInteractorInput, MainRouterProtocol>, MainModuleOutput {
    // MARK: - Weak properties
    weak var view: WeatherView?
}

// MARK: Private
extension MainPresenter {
    
}

// MARK: Module Input
extension MainPresenter: MainModuleInput {
    
}

// MARK: View Output
extension MainPresenter: MainViewOutput {
    func viewDidLoad() {
        //view?.set(title: "Main")
        view?.haha()
    }
}
