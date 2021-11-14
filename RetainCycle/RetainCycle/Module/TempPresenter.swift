//
//  TempPresenter.swift
//  RetainCycle
//
//  Created by user on 14.11.2021.
//

protocol TempPresentationLogic: AnyObject {}

final class TempPresenter: TempPresentationLogic {
	
	var viewController: TempDisplayLogic?

}

