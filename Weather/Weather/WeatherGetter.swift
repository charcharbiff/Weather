//
//  WeatherGetter.swift
//  Weather
//
//  Created by Nichelle Biffin on 7/29/17.
//  Copyright © 2017 Charles Biffin. All rights reserved.
//

import Foundation

class WeatherGetter{
    private let openWeatherMapBaseURL = "http://api.openweathermap.org/data/2.5/weather"
    private let openWeatherMapAPIKey = "4e01c67dde206edf2c3080432d41a777"
    
    func getWeather(city: String){
        let session = URLSession.shared
        
        let weatherRequest = NSURL(string: "\(openWeatherMapBaseURL)?zip=98052,us&APPID=\(openWeatherMapAPIKey)")
        
        let dataTask = session.dataTask(with: weatherRequest! as URL){
            (data: Data?, response: URLResponse?, error: Error?) in
            if let error = error {
                print("Error:\n\(error)")
            }
            else {
                print("Data:\n\(data!)")
            }
        }
        dataTask.resume()
    }
}
