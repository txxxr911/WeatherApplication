//
//  MainCoordinatorAssembly.swift
//  WeatherApplication
//
//  Created by Victor on 25.02.2022
//  
//

import Foundation

class MainCoordinatorAssembly: Assembly {
    func build(router: RouterType) -> MainCoordinatorType {
        let coordinator = MainCoordinator(container: container, router: router)
        return coordinator
    }
}
