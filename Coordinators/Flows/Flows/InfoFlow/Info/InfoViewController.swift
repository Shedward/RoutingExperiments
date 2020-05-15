//
//  InfoViewController.swift
//  Flows
//
//  Created by Vlad Maltsev on 14.05.2020.
//  Copyright © 2020 RoutingExperiments. All rights reserved.
//

import UIKit

class InfoViewController: UIViewController {
	static func instantiate() -> InfoViewController {
		InfoViewController(nibName: "InfoViewController", bundle: nil)
	}

	var viewModel: InfoViewModel?

	@IBAction private func close() {
		viewModel?.close()
	}
}
