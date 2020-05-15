//
//  CatalogStartCalculatorViewModel.swift
//  Flows
//
//  Created by Vlad Maltsev on 15.05.2020.
//  Copyright © 2020 RoutingExperiments. All rights reserved.
//

struct CatalogStartCalculatorViewModel {
	private var onStart: () -> Void
	var selectedValue: String?

	init(onStart: @escaping () -> Void) {
		self.onStart = onStart
	}

	func start() {
		onStart()
	}
}
