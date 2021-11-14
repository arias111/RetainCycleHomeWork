//
//  TempViewController.swift
//  RetainCycle
//
//  Created by user on 14.11.2021.
//

import Foundation
import UIKit

protocol TempDisplayLogic: AnyObject {
	func display()
}

class TempViewController: UIViewController, TempDisplayLogic {

	let interactor: TempBusinessLogic
	private let customView = TempView(frame: UIScreen.main.bounds)
	
	override func loadView() {
		self.view = customView
	}

	init(interactor: TempBusinessLogic) {
		self.interactor = interactor
		super.init(nibName: nil, bundle: nil)
		customView.delegate = self
	}
	
	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}

	override func viewDidLoad() {
		super.viewDidLoad()
		NotificationCenter.default.removeObserver(self)
	}
	
	func display() {}
}

extension TempViewController: TempViewDelegate {
	func buttonTapped() {
		self.dismiss(animated: true, completion: nil)
	}
}

