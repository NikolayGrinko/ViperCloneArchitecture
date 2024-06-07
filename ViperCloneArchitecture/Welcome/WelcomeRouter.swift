//
//  WelcomeRouter.swift
//  ViperCloneArchitecture
//
//  Created by Николай Гринько on 06.06.2024.
//

import Foundation

protocol WelcomeRouterProtocol: AnyObject {
	func openImage(for temperature: Int)
}


class WelcomeRouter: WelcomeRouterProtocol {
	weak var viewController: ViewController?
	
	func openImage(for temperature: Int) {
		let vc = ImageViewModuleBuilder.build(tempereture: temperature)
		viewController?.present(vc, animated: true)
	}
	
}
