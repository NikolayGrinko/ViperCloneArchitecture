//
//  WelcomeInteractor.swift
//  ViperCloneArchitecture
//
//  Created by Николай Гринько on 06.06.2024.
//

import Foundation

protocol WelcomeInteractorProtocol: AnyObject {
	func loadData()
	func loadWeather()
	var temperature: Int { get }
}

class WelcomeInteractor: WelcomeInteractorProtocol {
	weak var presenter: WelcomePresenterProtocol?
	let dateService = DateService()
	let weatherServices = WeatherService()
	
	var temperature: Int = 0
	
	func loadData() {
		dateService.getDate { [weak self] date in
			self?.presenter?.didload(date: date.description)
		}
	}
	
	func loadWeather() {
		weatherServices.getWeather { [weak self] weather in
			self?.presenter?.didload(weather: weather)
			self?.temperature = weather
		}
	}
	
	
}
