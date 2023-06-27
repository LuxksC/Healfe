//
//  SceneDelegate.swift
//  Healfe
//
//  Created by Sandra Monteiro de Castro on 10/04/23.
//

import Foundation
import UIKit
import Navigation
import DI

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?
    let navController = UINavigationController()
    var appCoordinator: AppCoordinator?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
        guard let windowScene = (scene as? UIWindowScene) else { return }
        let appWindow = UIWindow()
        appWindow.windowScene = windowScene
        
        // TODO: - Chamar o setupDI da classe DependencyInjector aqui, antes de iniciar o AppCoordinator
        let injector = DependencyInjector()

//        appCoordinator = AppCoordinator(navigationController: navController)
        appCoordinator = injector.container.resolve(AppCoordinator.self)
        appCoordinator?.start()

        appWindow.rootViewController = navController
        appWindow.makeKeyAndVisible()

        window = appWindow
    }

    func sceneDidDisconnect(_ scene: UIScene) {
        // Called as the scene is being released by the system.
        // This occurs shortly after the scene enters the background, or when its session is discarded.
        // Release any resources associated with this scene that can be re-created the next time the scene connects.
        // The scene may re-connect later, as its session was not necessarily discarded (see `application:didDiscardSceneSessions` instead).
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        // Called when the scene has moved from an inactive state to an active state.
        // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
    }

    func sceneWillResignActive(_ scene: UIScene) {
        // Called when the scene will move from an active state to an inactive state.
        // This may occur due to temporary interruptions (ex. an incoming phone call).
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
        // Called as the scene transitions from the background to the foreground.
        // Use this method to undo the changes made on entering the background.
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        // Called as the scene transitions from the foreground to the background.
        // Use this method to save data, release shared resources, and store enough scene-specific state information
        // to restore the scene back to its current state.
    }


}

