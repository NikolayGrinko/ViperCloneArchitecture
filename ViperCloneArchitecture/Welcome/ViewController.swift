//
//  ViewController.swift
//  ViperCloneArchitecture
//
//  Created by Николай Гринько on 06.06.2024.
//

import UIKit

protocol WelcomeViewProtocol: AnyObject {
	func showDate(date: String)
	func showWeather(weather: String)
}

class ViewController: UIViewController {
	@IBOutlet weak var dateLabel: UILabel!
	
	@IBOutlet weak var weatherLabel: UILabel!
	var presenter: WelcomePresenterProtocol?
	
	override func viewDidLoad() {
		super.viewDidLoad()
		presenter?.viewDidload()
	}
	@IBAction func didTapImageButton(_ sender: Any) {
		presenter?.didTapImageButton()
	}
}

extension ViewController: WelcomeViewProtocol {
	func showDate(date: String) {
		DispatchQueue.main.async {
			self.dateLabel.text = date
		}
	}
	
	func showWeather(weather: String) {
		DispatchQueue.main.async {
			self.weatherLabel.text = weather
		}
	}
	
	
}
