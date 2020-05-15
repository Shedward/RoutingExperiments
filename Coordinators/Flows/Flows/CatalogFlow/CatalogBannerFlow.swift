//
//  CatalogBannerFlow.swift
//  Flows
//
//  Created by Vlad Maltsev on 14.05.2020.
//  Copyright © 2020 RoutingExperiments. All rights reserved.
//

import UIKit

class CatalogBannerFlow {
	private var rootViewController: UIViewController?

	func startEmbeded(in view: UIView, of viewController: UIViewController) {
		let catalogBannerViewController = self.catalogBannerViewController()
		viewController.addChild(catalogBannerViewController)
		catalogBannerViewController.view.frame = view.bounds
		catalogBannerViewController.view.translatesAutoresizingMaskIntoConstraints = false
		view.addSubview(catalogBannerViewController.view)
		catalogBannerViewController.view.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
		catalogBannerViewController.view.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
		catalogBannerViewController.view.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
		catalogBannerViewController.view.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
		catalogBannerViewController.didMove(toParent: viewController)
		rootViewController = viewController
	}

	private func catalogBannerViewController() -> UIViewController {
		let viewController = CatalogBannerViewController.instantiate()
		viewController.viewModel = CatalogBannerViewModel(title: "Catalog") {
			self.openCatalog()
		}
		return viewController
	}

	private func openCatalog() {
		guard let rootViewController = rootViewController else { return }

		let catalogFlow = CatalogFlow()
		catalogFlow.startModally(from: rootViewController)
	}
}
