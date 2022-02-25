//
//  NSObject+Ext.swift
//  WeatherApplication
//
//  Created by Victor on 25.02.2022
//  
//

import Foundation

extension NSObject {
    class var nameOfClass: String {
        return NSStringFromClass(self).components(separatedBy: ".").last!
    }
}
