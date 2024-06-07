//
//  ImageViewerInteractor.swift
//  ViperCloneArchitecture
//
//  Created by Николай Гринько on 06.06.2024.
//

import Foundation
import UIKit

protocol ImageViewerInteractorProtocol: AnyObject {
	func getImageForCurrentTemperature() -> UIImage?
}

class ImageViewerInteractor: ImageViewerInteractorProtocol {
	
	weak var presenter: ImageViewerPresenterProtocol?
	
	let tempereture: Int
	
	init(tempereture: Int) {
		self.tempereture = tempereture
	}
	func getImageForCurrentTemperature() -> UIImage? {
		if tempereture < 0 {
			return UIImage(systemName: "snowflake")
		} else  if tempereture >= 0 {
			return UIImage(systemName: "cloud.fill")
		} else {
			return UIImage(systemName: "sun.min.fill")
		}
	}
	
}
