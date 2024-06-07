//
//  WelcomModuleBuilder.swift
//  ViperCloneArchitecture
//
//  Created by Николай Гринько on 06.06.2024.
//

import Foundation
import UIKit

class WelcomModuleBuilder {
	static func build() -> ViewController {
		let interactor = WelcomeInteractor()
		let router = WelcomeRouter()
		let presenter = WelcomePresenter(interactor: interactor, router: router)
		let storyboard = UIStoryboard(name: "Main", bundle: nil)
		let viewController = storyboard.instantiateViewController(withIdentifier: "Main") as! ViewController
		viewController.presenter = presenter
		presenter.view = viewController
		interactor.presenter = presenter
		router.viewController = viewController
		return viewController
		
	}
}
