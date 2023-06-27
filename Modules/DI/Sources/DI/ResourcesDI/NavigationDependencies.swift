//
//  HomeDependencies.swift
//  
//
//  Created by Lucas de Castro Souza on 20/06/23.
//

import UIKit
import Swinject
import Navigation

extension DependencyInjector {
    func setupNavigation(navigationController: UINavigationController) {
        container.register(Coordinator.self) { _ in
            return AppCoordinator(navigationController: navigationController)
        }
    }
}
