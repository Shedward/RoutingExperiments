//
//  CatalogBannerViewController.swift
//  Flows
//
//  Created by Vlad Maltsev on 14.05.2020.
//  Copyright © 2020 RoutingExperiments. All rights reserved.
//

import UIKit

class CatalogBannerViewController: UIViewController {
	static func instantiate() -> CatalogBannerViewController {
		CatalogBannerViewController(nibName: "CatalogBannerViewController", bundle: nil)
	}

	@IBOutlet private var titleLabel: UILabel!

	var viewModel: CatalogBannerViewModel? {
		didSet {
			reload()
		}
	}

	override func viewDidLoad() {
		super.viewDidLoad()

		reload()
	}

	@IBAction private func start() {
		viewModel?.start()
	}

	private func reload() {
		guard isViewLoaded else { return }

		titleLabel.text = viewModel?.title
	}
}
