//
//  WeatherService.swift
//  ViperCloneArchitecture
//
//  Created by Николай Гринько on 06.06.2024.
//

import Foundation

class WeatherService {
	func getWeather(complition: @escaping (Int) -> Void) {
		DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
			let temperature = Int.random(in: -30...30)
			complition(temperature)
		}
	}
}
