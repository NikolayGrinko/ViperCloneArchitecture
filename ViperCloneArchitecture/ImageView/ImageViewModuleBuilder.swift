//
//  ImageViewModuleBuilder.swift
//  ViperCloneArchitecture
//
//  Created by Николай Гринько on 06.06.2024.
//

import Foundation
import UIKit

class ImageViewModuleBuilder {
	static func build(tempereture: Int) -> ImageViewerViewController {
		let interactor = ImageViewerInteractor(tempereture: tempereture)
		let router = ImageViewerRouter()
		let presenter = ImageViewerPresenter(interactor: interactor, router: router)
		let storyboard = UIStoryboard(name: "ImageViewer", bundle: nil)
		let viewController = storyboard.instantiateViewController(withIdentifier: "ImageViewer") as! ImageViewerViewController
	
		presenter.view = viewController
		viewController.presenter = presenter
		interactor.presenter = presenter
		router.viewController = viewController
		return viewController
		
	}
}
