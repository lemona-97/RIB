//
//  SceneDelegate.swift
//  RIB
//
//  Created by wooseob on 2023/07/05.
//

import UIKit
import RIBs

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    var window: UIWindow?
    private var launchRouter: LaunchRouting?
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        if let windowScene = scene as? UIWindowScene {
            window = UIWindow(windowScene: windowScene)


                let launchRouter = RootBuilder(dependency: AppComponent()).build()
                self.launchRouter = launchRouter
                launchRouter.launchFromWindow(window!)

               
            
        }
    }

    func sceneDidDisconnect(_ scene: UIScene) {
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
    }

    func sceneWillResignActive(_ scene: UIScene) {
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
    }


}

