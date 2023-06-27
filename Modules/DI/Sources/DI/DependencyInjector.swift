//
//  DependencyInjector.swift
//
//
//  Created by Lucas de Castro Souza on 20/06/23.
//

import Swinject
import UIKit
import Navigation

public class DependencyInjector {
    
    public lazy var container: Container = {
        return Container()
    }()
    
    public init() {}

    public func setupDI(navigationController: UINavigationController) {
        setupNavigation(navigationController: navigationController)
    }
}
