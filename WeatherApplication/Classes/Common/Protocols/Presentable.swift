//
//  Presentable.swift
//  WeatherApplication
//
//  Created by Victor on 25.02.2022
//  
//

import UIKit

protocol Presentable {
    func toPresent() -> UIViewController
}

extension UIViewController: Presentable {
    func toPresent() -> UIViewController {
        return self
    }
}
