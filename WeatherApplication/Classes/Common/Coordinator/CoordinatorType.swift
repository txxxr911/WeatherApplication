//
//  CoordinatorType.swift
//  WeatherApplication
//
//  Created by Victor on 25.02.2022
//  
//

import Foundation

protocol CoordinatorType: AnyObject, Presentable {
    var container: Container {get}
    var router: RouterType {get}
    var completion: (() -> Void)? {get set}
    
    func start()
    func start(with option: DeepLinkOption?)
}
