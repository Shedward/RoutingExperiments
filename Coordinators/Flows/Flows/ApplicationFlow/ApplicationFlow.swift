//
//  ApplicationFlow.swift
//  Coordinators
//
//  Created by Vlad Maltsev on 14.05.2020.
//  Copyright © 2020 RoutingExperiments. All rights reserved.
//

import UIKit

class ApplicationFlow {
	let window: UIWindow

	init(in window: UIWindow) {
		self.window = window
	}

	func start() {
		showMainViewController()
	}

	private func showMainViewController() {
		let viewController = MainViewController.instatiate()
		let navigationController = UINavigationController(rootViewController: viewController)
		window.rootViewController = navigationController

		let calculatorFlow = CalculatorFlow()
		calculatorFlow.startEmbeded(
			in: viewController.topView,
			of: viewController,
			navigationController: navigationController
		)

		let catalogBannerFlow = CatalogBannerFlow()
		catalogBannerFlow.startEmbeded(in: viewController.bottomView, of: viewController)
	}
}
