//
//  DateService.swift
//  ViperCloneArchitecture
//
//  Created by Николай Гринько on 06.06.2024.
//

import Foundation


class DateService {
	func getDate(completion: @escaping (Date) -> Void) {
		DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
			completion(Date())
		}
	}
}
