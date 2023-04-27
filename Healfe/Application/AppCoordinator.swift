//
//  AppCoordinator.swift
//  Healfe
//
//  Created by Sandra Monteiro de Castro on 11/04/23.
//

import Foundation
import UIKit
import SwiftUI

public protocol Coordinator: AnyObject {
    var childCoordinators: [Coordinator] { get set }
    var navigationController: UINavigationController { get }

    func start()
}

public class AppCoordinator: Coordinator {
    public var childCoordinators: [Coordinator] = []
    public var navigationController: UINavigationController

    public init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }

    public func start() {
        startApp()
    }

    private func startApp() {
        let vc = UIHostingController(rootView: StartView())
//        let vc = StartViewController()
        navigationController.setViewControllers([vc], animated: false)
    }
}
