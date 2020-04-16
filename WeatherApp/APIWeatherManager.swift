//
//  APIWeatherManager.swift
//  WeatherApp
//
//  Created by Карина Паланчук on 16/04/2020.
//  Copyright © 2020 Karina Palanchuk. All rights reserved.
//

import Foundation

final class APIWeatherManager: APIManager {

    var sessionConfiguration: URLSessionConfiguration
    
    lazy var session: URLSession = {
        return URLSession(configuration: sessionConfiguration)
    } ()
    
    let apiKey: String
    
    init(sessionConfiguration: URLSessionConfiguration, apiKey: String) {
        <#statements#>
    }
    
}
