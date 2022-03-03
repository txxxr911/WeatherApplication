//
//  WeatherView.swift
//  WeatherApp
//
//  Created by Victor on 21.02.2022.
//

import Foundation
import UIKit
import SnapKit

protocol AnyView {
    var presenter: AnyPresenter? {get set}
    //func updateWeatherData(with users: [Weather])
    func updateWeatherData(with error: String)
    func haha()
}

class WeatherView: UIViewController, AnyView {
    var presenter: AnyPresenter?
    
    // There is need to set view

    var backgroundImage = UIImageView()
    var cityName = UILabel()
    var weatherIcon = UIImageView()
    var temperatureLabel = UILabel()
    var weatherDescription = UILabel()
    
    
    
    func initialize() {
        
        backgroundImage.image = UIImage(named: "backgroundImage")
        view.addSubview(backgroundImage)
        backgroundImage.snp.makeConstraints{maker in
            maker.top.equalToSuperview().inset(0)
            maker.bottom.equalToSuperview().inset(0)
            maker.left.equalToSuperview().inset(0)
            maker.right.equalToSuperview().inset(0)
        }

        
        cityName.text = "Your city"
        cityName.font = UIFont(name: "Georgia-Bold", size: 25)
        view.addSubview(cityName)
        cityName.snp.makeConstraints{maker in
            maker.centerX.equalToSuperview()
            maker.top.equalToSuperview().inset(125)
        }
        
        weatherIcon.image = UIImage(named: "weatherIcon")
        view.addSubview(weatherIcon)
        weatherIcon.snp.makeConstraints{maker in
            maker.width.equalTo(50)
            maker.height.equalTo(50)
            maker.centerX.equalToSuperview()
            maker.top.equalTo(cityName).inset(50)
            
        }
        
        temperatureLabel.text = " ºC"
        temperatureLabel.font = UIFont(name: "Georgia-Bold", size: 25)
        view.addSubview(temperatureLabel)
        temperatureLabel.snp.makeConstraints{maker in
            maker.centerX.equalToSuperview()
            maker.top.equalTo(weatherIcon).inset(70)
        }
        
        weatherDescription.text = "Weather desription"
        weatherDescription.font = UIFont(name: "Georgia-Bold", size: 20)
        view.addSubview(weatherDescription)
        weatherDescription.snp.makeConstraints{maker in
            maker.top.equalTo(temperatureLabel).inset(50)
            maker.centerX.equalToSuperview()
        }

    }
    
    func haha(){
        print("Finally an I'm")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.initialize()
        
    }
    
//    func updateWeatherData(with users: [Weather]) {
//
//    }
    
    func updateWeatherData(with error: String) {
        
    }
}

// MARK: - Configure
extension WeatherView {
    
}

// MARK: View Input
extension WeatherView {
    func set(title: String) {
        self.title = title
    }
}

// MARK: Button Action
extension WeatherView {
    
}
