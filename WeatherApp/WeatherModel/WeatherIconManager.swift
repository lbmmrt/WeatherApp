//
//  WeatherIconManager.swift
//  WeatherApp
//
//  Created by Карина Паланчук on 13/04/2020.
//  Copyright © 2020 Karina Palanchuk. All rights reserved.
//

import Foundation
import UIKit

enum WeatherIconManager: String {
    
    case Clear = "clear" // — ясно.
    case PartlyCloudy = "partly-cloudy" // — малооблачно.
    case Cloudy = "cloudy" // — облачно с прояснениями.
    case Overcast = "overcast" //  — пасмурно.
    case PartlyCloudyAndLightRain = "partly-cloudy-and-light-rain" // — небольшой дождь.
    case partlyCloudyAndRain = "partly-cloudy-and-rain" // — дождь.
    case OvercastAndRain = "overcast-and-rain" // — сильный дождь.
    case OvercastThunderstormsWithRain = "overcast-thunderstorms-with-rain" // — сильный дождь, гроза.
    case CloudyAndLightRain = "cloudy-and-light-rain" // — небольшой дождь.
    case OvercastAndLightRain = "overcast-and-light-rain" // — небольшой дождь.
    case CloudyAndRain = "cloudy-and-rain" // — дождь.
    case OvercastAndWetSnow = "overcast-and-wet-snow" // — дождь со снегом.
    case PartlyCloudyAndLightSnow = "partly-cloudy-and-light-snow" // — небольшой снег.
    case PartlyCloudyAndSnow = "partly-cloudy-and-snow" // — снег.
    case OvercastAndSnow = "overcast-and-snow" // — снегопад.
    case CloudyAndLightSnow = "cloudy-and-light-snow" // — небольшой снег.
    case OvercastAndLightSnow = "overcast-and-light-snow" // — небольшой снег.
    case CloudyAndSnow = "cloudy-and-snow" // — снег.
    
    case UnpredictedIcon = "unpredicted-icon"
    
    
    init(rawValue: String) {
        
        switch rawValue {
        case "clear": self = .Clear
        case "partly-cloudy": self = .PartlyCloudy
        case "cloudy": self = .Cloudy
        case "overcast": self = .Overcast
        case "partly-cloudy-and-light-rain": self = .PartlyCloudyAndLightRain
        case "partly-cloudy-and-rain": self = .partlyCloudyAndRain
        case "overcast-and-rain": self = .OvercastAndRain
        case "overcast-thunderstorms-with-rain": self = .OvercastThunderstormsWithRain
        case "cloudy-and-light-rain": self = .CloudyAndLightRain
        case "overcast-and-light-rain": self = .OvercastAndLightRain
        case "cloudy-and-rain": self = .CloudyAndRain
        case "overcast-and-wet-snow": self = .OvercastAndWetSnow
        case "partly-cloudy-and-light-snow": self = .PartlyCloudyAndLightRain
        case "partly-cloudy-and-snow": self = .PartlyCloudyAndSnow
        case "overcast-and-snow": self = .OvercastAndSnow
        case "cloudy-and-light-snow": self = .CloudyAndLightSnow
        case "overcast-and-light-snow": self = .OvercastAndLightSnow
        case "cloudy-and-snow": self = .CloudyAndSnow
            
        default: self = .UnpredictedIcon
        }
    }
    
}

extension WeatherIconManager {
    var image: UIImage {
        return UIImage(named: self.rawValue)!
    }
}
