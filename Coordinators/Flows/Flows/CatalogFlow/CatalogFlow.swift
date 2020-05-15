//
//  CatalogFlow.swift
//  Flows
//
//  Created by Vlad Maltsev on 14.05.2020.
//  Copyright © 2020 RoutingExperiments. All rights reserved.
//

import UIKit

class CatalogFlow {
	private var navigationController: UINavigationController?

	func startModally(from viewController: UIViewController) {
		let navigationController = UINavigationController()
		self.navigationController = navigationController
		viewController.present(navigationController, animated: true, completion: nil)
		showStartCalculator(animated: false)
	}

	private func showStartCalculator(animated: Bool) {
		guard let navigationController = navigationController else { return }

		let viewController = CatalogStartCalculatorViewController.instantiate()

		viewController.viewModel = CatalogStartCalculatorViewModel { [weak viewController] in
			self.startCalculator { value in
				viewController?.viewModel?.selectedValue = value
			}
		}

		navigationController.pushViewController(viewController, animated: animated)
	}

	private func startCalculator(completion: @escaping (String?) -> Void) {
		guard let navigationController = navigationController else { return }

		let calculatorFlow = CalculatorFlow()
		calculatorFlow.startNavigating(in: navigationController, completion: completion)
	}
}
