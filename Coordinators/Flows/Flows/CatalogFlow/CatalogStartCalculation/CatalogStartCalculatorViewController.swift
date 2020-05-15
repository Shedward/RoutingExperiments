//
//  CatalogStartCalculatorViewController.swift
//  Flows
//
//  Created by Vlad Maltsev on 15.05.2020.
//  Copyright © 2020 RoutingExperiments. All rights reserved.
//

import UIKit

class CatalogStartCalculatorViewController: UIViewController {
	static func instantiate() -> CatalogStartCalculatorViewController {
		CatalogStartCalculatorViewController(nibName: "CatalogStartCalculatorViewController", bundle: nil)
	}

	@IBOutlet private var valueLabel: UILabel!

	var viewModel: CatalogStartCalculatorViewModel? {
		didSet {
			reload()
		}
	}

	@IBAction private func start() {
		viewModel?.start()
	}

	private func reload() {
		guard isViewLoaded else { return }

		valueLabel.text = viewModel?.selectedValue
	}
}
