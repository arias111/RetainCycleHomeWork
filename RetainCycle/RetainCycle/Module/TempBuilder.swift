//
//  TempBuilder.swift
//  RetainCycle
//
//  Created by user on 14.11.2021.
//

import Foundation
import UIKit

final class TempBuilder {
	
	static func build() -> UIViewController {
		let presenter = TempPresenter()
		let interactor = TempInteractor(presenter: presenter)
		let controller = TempViewController(interactor: interactor)
		presenter.viewController = controller

		return controller
	}
}
