//
//  MainViewController.swift
//  Flows
//
//  Created by Vlad Maltsev on 14.05.2020.
//  Copyright © 2020 RoutingExperiments. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
	static func instatiate() -> MainViewController {
		let viewController = MainViewController(nibName: "MainViewController", bundle: nil)
		viewController.loadViewIfNeeded()
		return viewController
	}

	@IBOutlet private(set) var topView: UIView!
	@IBOutlet private(set) var bottomView: UIView!
}
