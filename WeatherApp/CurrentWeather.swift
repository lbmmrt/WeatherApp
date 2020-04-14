//
//  CurrentWeather.swift
//  WeatherApp
//
//  Created by Карина Паланчук on 13/04/2020.
//  Copyright © 2020 Karina Palanchuk. All rights reserved.
//

import Foundation
import UIKit

struct CurrentWeather {
    let temperature: Double
    let appearentTemperature: Double
    let humidity: Double
    let pressure: Double
    let icon: UIImage
}


extension CurrentWeather {
    var pressureString: String {
        return "\(Int(pressure)) mm"
    }
    var temperatureString: String {
        return "\(Int(temperature))˚C"
    }
    var appearentTemperatureString: String {
        return "\(Int(appearentTemperature))˚C"
    }
    var humidityString: String {
        return "\(Int(humidity)) %"
    }
}
