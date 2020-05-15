//
//  AppDelegate.swift
//  Coordinators
//
//  Created by Vlad Maltsev on 14.05.2020.
//  Copyright © 2020 RoutingExperiments. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
	var window: UIWindow?

	func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

		let window = UIWindow(frame: UIScreen.main.bounds)
		window.makeKeyAndVisible()
		self.window = window
		let applicationFlow = ApplicationFlow(in: window)
		applicationFlow.start()

		return true
	}
}

