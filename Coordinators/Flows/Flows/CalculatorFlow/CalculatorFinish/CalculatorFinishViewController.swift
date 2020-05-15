//
//  CalculatorFinishViewController.swift
//  Flows
//
//  Created by Vlad Maltsev on 15.05.2020.
//  Copyright © 2020 RoutingExperiments. All rights reserved.
//

import UIKit

class CalculatorFinishViewController: UIViewController {
	static func instantiate() -> CalculatorFinishViewController {
		CalculatorFinishViewController(nibName: "CalculatorFinishViewController", bundle: nil)
	}

	var viewModel: CalculatorFinishViewModel?

	@IBAction private func finish() {
		viewModel?.finish()
	}
}
