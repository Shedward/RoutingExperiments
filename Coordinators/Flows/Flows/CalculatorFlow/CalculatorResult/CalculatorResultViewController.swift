//
//  CalculatorResultViewController.swift
//  Flows
//
//  Created by Vlad Maltsev on 14.05.2020.
//  Copyright © 2020 RoutingExperiments. All rights reserved.
//

import UIKit

class CalculatorResultViewController: UIViewController {
	static func instantiate() -> CalculatorResultViewController {
		CalculatorResultViewController(nibName: "CalculatorResultViewController", bundle: nil)
	}

	var viewModel: CalculatorResultViewModel? {
		didSet {
			reload()
		}
	}

	override func viewDidLoad() {
		super.viewDidLoad()

		reload()
	}

	@IBOutlet private var label: UILabel!

	@IBAction private func openModal() {
		viewModel?.openModal()
	}

	@IBAction private func next() {
		viewModel?.next()
	}

	private func reload() {
		guard isViewLoaded else { return }

		label.text = viewModel?.value
	}
}
