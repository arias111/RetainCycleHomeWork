//
//  ViewController.swift
//  RetainCycle
//
//  Created by user on 14.11.2021.
//

import UIKit

class ViewController: UIViewController {
	
	private lazy var button: UIButton = {
		let btn = UIButton()
		btn.setTitle("Go to next screen", for: .normal)
		btn.backgroundColor = .black
		btn.translatesAutoresizingMaskIntoConstraints = false
		btn.addTarget(self, action: #selector(goTo), for: .touchUpInside)
		return btn
	}()
	
	deinit {
		print("deinit")
	}

    override func viewDidLoad() {
        super.viewDidLoad()
		self.view.addSubview(button)
		self.view.backgroundColor = .white
		NotificationCenter.default.removeObserver(self)

		button.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
		button.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
		button.widthAnchor.constraint(equalToConstant: 200).isActive = true
    }
	
	@objc func goTo() {
		let builder = TempBuilder.build()
		self.present(builder, animated: true, completion: nil)
	}
}
