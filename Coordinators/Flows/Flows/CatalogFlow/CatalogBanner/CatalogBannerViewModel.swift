//
//  CatalogBannerViewModel.swift
//  Flows
//
//  Created by Vlad Maltsev on 14.05.2020.
//  Copyright © 2020 RoutingExperiments. All rights reserved.
//

import Combine

struct CatalogBannerViewModel {
	let title: String
	private let onStart: () -> Void

	init(title: String, onStart: @escaping () -> Void) {
		self.title = title
		self.onStart = onStart
	}

	func start() {
		onStart()
	}
}
