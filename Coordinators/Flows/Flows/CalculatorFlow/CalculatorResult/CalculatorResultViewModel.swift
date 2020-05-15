//
//  CalculatorResultViewModel.swift
//  Flows
//
//  Created by Vlad Maltsev on 14.05.2020.
//  Copyright © 2020 RoutingExperiments. All rights reserved.
//

struct CalculatorResultViewModel {
	let value: String?
	private let onNext: () -> Void
	private let onOpenModal: () -> Void

	init(value: String?, onNext: @escaping () -> Void, onOpenModal: @escaping () -> Void) {
		self.value = value
		self.onNext = onNext
		self.onOpenModal = onOpenModal
	}

	func next() {
		onNext()
	}

	func openModal() {
		onOpenModal()
	}
}
