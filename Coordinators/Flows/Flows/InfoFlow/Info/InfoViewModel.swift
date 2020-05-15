//
//  InfoViewModel.swift
//  Flows
//
//  Created by Vlad Maltsev on 14.05.2020.
//  Copyright © 2020 RoutingExperiments. All rights reserved.
//

struct InfoViewModel {
	private let onClose: () -> Void

	init(onClose: @escaping () -> Void) {
		self.onClose = onClose
	}

	func close() {
		onClose()
	}
}
