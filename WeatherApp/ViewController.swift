//
//  ViewController.swift
//  WeatherApp
//
//  Created by Карина Паланчук on 13/04/2020.
//  Copyright © 2020 Karina Palanchuk. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var pressurLabel: UILabel!
    @IBOutlet weak var humidityLabel: UILabel!
    @IBOutlet weak var temperatureLabel: UILabel!
    @IBOutlet weak var appearentTemperatureLabel: UILabel!
    @IBOutlet weak var refreshButton: UIButton!
    
    
    @IBAction func refreshButtonTapped(_ sender: UIButton) {
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let icon = WeatherIconManager.CloudyAndRain.image
        let currentWeather = CurrentWeather(temperature: 25, appearentTemperature: 21, humidity: 10, pressure: 30, icon: icon)
        updateUIWith(currentWeather: currentWeather)
        
       // let urlString = "https://api.weather.yandex.ru/v1/forecast?lat=55.75396&lon=37.620393&extra=true X-Yandex-API-Key: 66e548d9-ff28-45ca-94d1-cdeb9521fc14"
        
    }
    
    func updateUIWith(currentWeather: CurrentWeather) {
        
        self.imageView.image = currentWeather.icon
        self.pressurLabel.text = currentWeather.pressureString
        self.temperatureLabel.text = currentWeather.temperatureString
        self.appearentTemperatureLabel.text = currentWeather.appearentTemperatureString
        self.humidityLabel.text = currentWeather.humidityString
    }
}



