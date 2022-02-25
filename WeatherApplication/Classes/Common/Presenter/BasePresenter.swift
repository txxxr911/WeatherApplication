//
//  BasePresenter.swift
//  WeatherApplication
//
//  Created by Victor on 25.02.2022
//  
//

import Foundation

class BasePresenter<I, R> {
    let interactor: I
    let router: R
    
    init(interactor: I, router: R) {
        self.interactor = interactor
        self.router = router
    }
}
