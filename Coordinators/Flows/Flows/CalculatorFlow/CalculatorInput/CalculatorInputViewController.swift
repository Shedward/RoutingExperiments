//
//  CalculatorViewController.swift
//  Flows
//
//  Created by Vlad Maltsev on 14.05.2020.
//  Copyright © 2020 RoutingExperiments. All rights reserved.
//

import UIKit

class CalculatorInputViewController: UIViewController {
	static func instatiate() -> CalculatorInputViewController {
		CalculatorInputViewController(nibName: "CalculatorInputViewController", bundle: nil)
	}

	var viewModel: CalculatorInputViewModel?

	@IBOutlet private var inputTextField: UITextField!

	@IBAction private func calculate(_ sender: Any) {
		viewModel?.calculate(text: inputTextField.text)
	}
}
