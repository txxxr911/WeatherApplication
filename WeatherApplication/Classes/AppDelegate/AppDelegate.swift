//
//  AppDelegate.swift
//  WeatherApplication
//
//  Created by Victor on 25.02.2022
//  
//

import UIKit

@UIApplicationMain
class AppDelegate: AppDelegateManager {
    var window: UIWindow?
    
    lazy var container: DependencyContainer = {
        let factory = AssemblyFactory()
        let container = DependencyContainer(assemblyFactory: factory)
        
        // Setup Coordinators
        container.apply(AppCoordinatorAssembly.self)
        container.apply(MainCoordinatorAssembly.self)
        
        // Setup Modules
        container.apply(MainAssembly.self)
        
        // Setup Services
        container.apply(AppConfigServiceAssembly.self)
        container.apply(EnvironmentServiceAssembly.self)
        container.apply(GetCoordinatesServiceAssembly.self)
        container.apply(GetWeatherDataServiceAssembly.self)
        container.apply(DataStorageServiceAssembly.self)
        
        
        return container
    }()

    override var services: [AppDelegateService] {
        return [
            ApplicationService(container: container, window: window)
        ]
    }
}

