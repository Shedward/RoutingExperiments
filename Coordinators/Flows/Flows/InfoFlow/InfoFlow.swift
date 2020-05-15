//
//  InfoFlow.swift
//  Flows
//
//  Created by Vlad Maltsev on 14.05.2020.
//  Copyright © 2020 RoutingExperiments. All rights reserved.
//

import UIKit

class InfoFlow {
	func startModaly(from viewController: UIViewController) {
		let infoViewController = InfoViewController.instantiate()
		infoViewController.viewModel = InfoViewModel { [weak infoViewController] in
			infoViewController?.dismiss(animated: true, completion: nil)
		}
		viewController.present(infoViewController, animated: true, completion: nil)
	}
}
