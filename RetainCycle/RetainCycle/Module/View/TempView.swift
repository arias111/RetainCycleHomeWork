//
//  TempView.swift
//  RetainCycle
//
//  Created by user on 14.11.2021.
//

import Foundation
import UIKit

protocol TempViewDelegate: AnyObject {
	func buttonTapped()
}

class TempView: UIView {
	
	private lazy var customButton: UIButton = {
		let button = UIButton()
		button.setTitle("Button", for: .normal)
		button.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
		button.translatesAutoresizingMaskIntoConstraints = false
		button.backgroundColor = .black
		return button
	}()
	
	// MARK: - Properties
	
	weak var delegate: TempViewDelegate?
	
	// MARK: - Inits
	
	override init(frame: CGRect) {
		super.init(frame: frame)
		backgroundColor = .white
		setupSubviews()
		makeConstraints()
	}
	
	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
	
	private func setupSubviews() {
		addSubview(customButton)
	}
	
	private func makeConstraints() {
		
		customButton.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
		customButton.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
		customButton.widthAnchor.constraint(equalToConstant: 100).isActive = true
	}
	
	//MARK: - Actions
	
	@objc private func buttonTapped() {
		delegate?.buttonTapped()
	}
}
