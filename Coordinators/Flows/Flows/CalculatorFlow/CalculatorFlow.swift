//
//  CalculatorFlow.swift
//  Flows
//
//  Created by Vlad Maltsev on 14.05.2020.
//  Copyright © 2020 RoutingExperiments. All rights reserved.
//

import UIKit

class CalculatorFlow {
	private var inputValue: String?
	private var navigationController: UINavigationController?
	private var finish: (() -> Void)?

	func startEmbeded(
		in view: UIView,
		of viewController: UIViewController,
		navigationController: UINavigationController
	) {
		let calculatorViewController = self.calculatorInputViewController()
		viewController.addChild(calculatorViewController)
		calculatorViewController.view.frame = view.bounds
		calculatorViewController.view.translatesAutoresizingMaskIntoConstraints = false
		view.addSubview(calculatorViewController.view)
		calculatorViewController.view.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
		calculatorViewController.view.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
		calculatorViewController.view.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
		calculatorViewController.view.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
		calculatorViewController.didMove(toParent: viewController)
		self.navigationController = navigationController

		let initialViewController = navigationController.topViewController
		finish = { [initialViewController] in
			if let initialViewController = initialViewController {
				navigationController.popToViewController(initialViewController, animated: true)
			}
		}
	}

	func startNavigating(in navigationController: UINavigationController, completion: @escaping (String?) -> Void) {
		self.navigationController = navigationController

		let initialViewController = navigationController.topViewController
		finish = { [initialViewController] in
			if let initialViewController = initialViewController {
				navigationController.popToViewController(initialViewController, animated: true)
			}
			completion(self.inputValue)
		}

		navigationController.pushViewController(calculatorInputViewController(), animated: true)
	}

	func calculatorInputViewController() -> UIViewController {
		let viewController = CalculatorInputViewController.instatiate()
		viewController.viewModel = CalculatorInputViewModel { result in
			self.inputValue = result
			self.showCalculatorResult(text: result)
		}
		return viewController
	}

	func showCalculatorResult(text: String?) {
		guard let navigationController = navigationController else { return }

		let viewController = CalculatorResultViewController.instantiate()
		viewController.viewModel = CalculatorResultViewModel(
			value: text,
			onNext: {
				self.showCalculatorFinish()
		   },
			onOpenModal: {
				self.showModal()
			}
		)
		navigationController.pushViewController(viewController, animated: true)
	}

	func showModal() {
		guard let navigationController = navigationController else { return }

		let infoFlow = InfoFlow()
		infoFlow.startModaly(from: navigationController)
	}

	func showCalculatorFinish() {
		guard let navigationController = navigationController else { return }

		let viewController = CalculatorFinishViewController.instantiate()

		viewController.viewModel = CalculatorFinishViewModel {
			self.finish?()
		}

		navigationController.pushViewController(viewController, animated: true)
	}
}
