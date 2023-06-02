//
//  File.swift
//  
//
//  Created by Lucas de Castro Souza on 31/05/23.
//

import UIKit
import SwiftUI
import HomeFeature

class HomeCoordinator: Coordinator {
    weak var parentCoordinator: Coordinator?
    var childCoordinators: [Coordinator] = []
    var navigationController: UINavigationController
    
    init(parentCoordinator: Coordinator?, navigationController: UINavigationController) {
        self.parentCoordinator = parentCoordinator
        self.navigationController = navigationController
    }
    
    func start() {
        showHomeTabView()
    }
    
    private func showHomeTabView() {
        let viewController = UIHostingController(rootView: HomeTabView())
        navigationController.setViewControllers([viewController], animated: true)
    }
}
