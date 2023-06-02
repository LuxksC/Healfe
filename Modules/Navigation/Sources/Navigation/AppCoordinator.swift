//
//  AppCoordinator.swift
//  Healfe
//
//  Created by Sandra Monteiro de Castro on 11/04/23.
//

import Foundation
import UIKit
import SwiftUI
import HomeFeature

//TODO: - Esse protocol precisa ficar em um lugar mais genérico
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
        let viewController = UIHostingController(rootView: StartSplashView(delegate: self))
        navigationController.setViewControllers([viewController], animated: false)
    }
}

//MARK: - HomeFeature

extension AppCoordinator: StartSplashViewSceneDelegate {
    public func showHome() {
        let coordinator = HomeCoordinator(parentCoordinator: self, navigationController: navigationController)
        childCoordinators.append(coordinator)
        coordinator.start()
    }
}
