//
//  TempInteractor.swift
//  RetainCycle
//
//  Created by user on 14.11.2021.
//

protocol TempBusinessLogic {
	func load()
}

final class TempInteractor: TempBusinessLogic {
	
	let presenter: TempPresentationLogic
	let provider: TempProviderProtocol

	init(presenter: TempPresentationLogic, provider: TempProviderProtocol = TempProvider()) {
		self.presenter = presenter
		self.provider = provider
	}

	func load() {}
}
