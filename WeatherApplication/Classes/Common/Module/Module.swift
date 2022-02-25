//
//  Module.swift
//  WeatherApplication
//
//  Created by Victor on 25.02.2022
//  
//

import UIKit

protocol ModuleOutput {
    
}

struct Module<Input, Output>: Presentable {
    var view: UIViewController
    var input: Input
    var output: Output
    
    func toPresent() -> UIViewController {
        return view
    }
}
