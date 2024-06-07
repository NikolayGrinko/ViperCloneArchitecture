//
//  WelcomePresenter.swift
//  ViperCloneArchitecture
//
//  Created by Николай Гринько on 06.06.2024.
//

import Foundation

protocol WelcomePresenterProtocol: AnyObject {
	func viewDidload()
	func didTapImageButton()
	func didload(date: String?)
	func didload(weather: Int?)
}

class WelcomePresenter {
	weak var view: (WelcomeViewProtocol)?
	var router: WelcomeRouterProtocol
	var interactor: WelcomeInteractorProtocol
	
	init(interactor: WelcomeInteractorProtocol, router: WelcomeRouterProtocol) {
		self.interactor = interactor
		self.router = router
	}
}

extension WelcomePresenter: WelcomePresenterProtocol {
	
	func viewDidload() {
		interactor.loadData()
		interactor.loadWeather()
	}
	
	func didTapImageButton() {
		let temperature = interactor.temperature
		router.openImage(for: temperature)
	}
	
	
	func didload(date: String?) {
		view?.showDate(date: date ?? "No date today")
	}
	
	func didload(weather: Int?) {
		let temperature = weather?.description ?? "No temperature"
		view?.showWeather(weather: temperature)
	}
}
