//
//  CalculatorViewModel.swift
//  Flows
//
//  Created by Vlad Maltsev on 14.05.2020.
//  Copyright © 2020 RoutingExperiments. All rights reserved.
//

class CalculatorInputViewModel {
	private let onCalculate: (String?) -> Void

	init(onCalculate: @escaping (String?) -> Void) {
		self.onCalculate = onCalculate
	}

	func calculate(text: String?) {
		onCalculate(text)
	}
}
