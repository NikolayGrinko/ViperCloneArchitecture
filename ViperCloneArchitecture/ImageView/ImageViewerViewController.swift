//
//  ImageViewerViewController.swift
//  ViperCloneArchitecture
//
//  Created by Николай Гринько on 06.06.2024.
//

import Foundation
import UIKit

protocol ImageViewerViewProtocol: AnyObject {
	func showImage(image: UIImage?)
}

class ImageViewerViewController: UIViewController {
	
	@IBOutlet weak var imageView: UIImageView!
	
	var presenter: ImageViewerPresenterProtocol?
	
	override func viewDidLoad() {
		super.viewDidLoad()
		presenter?.viewDidloaded()
		initialize()
	}
}

private extension ImageViewerViewController {
	func initialize() {
	}
}

extension ImageViewerViewController: ImageViewerViewProtocol {
	func showImage(image: UIImage?) {
		DispatchQueue.main.async {
			self.imageView.image = image
		}
	}
	
	
	
	
}
