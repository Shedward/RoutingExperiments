//
//  CalculatorFinishViewModel.swift
//  Flows
//
//  Created by Vlad Maltsev on 15.05.2020.
//  Copyright © 2020 RoutingExperiments. All rights reserved.
//

struct CalculatorFinishViewModel {
	private let onFinish: () -> Void

	init(onFinish: @escaping () -> Void) {
		self.onFinish = onFinish
	}

	func finish() {
		onFinish()
	}
}
