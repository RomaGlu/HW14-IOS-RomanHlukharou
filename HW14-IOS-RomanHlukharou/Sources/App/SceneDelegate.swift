//
//  SceneDelegate.swift
//  HW14-IOS-RomanHlukharou
//
//  Created by Роман Глухарев on 09/07/2023.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        window = UIWindow(windowScene: windowScene)
        let tabBarController = TabBarController()
        let navigationController = UINavigationController(rootViewController: tabBarController)
        window?.rootViewController = navigationController
        window?.makeKeyAndVisible()
    }
    
    func setupTabBarController(controller: UITabBarController) {
        let first = LibraryViewController()
        let firstIcon = UITabBarItem(title: "Library", image: UIImage(systemName: "photo.fill.on.rectangle.fill"), selectedImage: UIImage(systemName: "photo.fill.on.rectangle.fill"))
        first.tabBarItem = firstIcon
        let firstNavigationViewController = UINavigationController(rootViewController: first)
        
        let second = ForYouViewController()
        let secondIcon = UITabBarItem(title: "For You", image: UIImage(systemName: "heart.text.square.fill"), selectedImage: UIImage(systemName: "heart.text.square.fill"))
        second.tabBarItem = secondIcon
        let secondNavigationController = UINavigationController(rootViewController: second)
        
        let third = AlbumViewController()
        let thirdIcon = UITabBarItem(title: "Albums", image: UIImage(systemName: "rectangle.stack.fill"), selectedImage: UIImage(systemName: "rectangle.stack.fill"))
        third.tabBarItem = thirdIcon
        third.title = "Albums"
        let thirdNavigationViewController = UINavigationController(rootViewController: third)
        
        let fourth = SearchViewController()
        let fourthIcon = UITabBarItem(title: "Search", image: UIImage(systemName: "magnifyingglass"), selectedImage: UIImage(systemName: "magnifyingglass"))
        fourth.tabBarItem = fourthIcon
        let fourthNavigationViewController = UINavigationController(rootViewController: fourth)
        
        let controllers = [firstNavigationViewController, secondNavigationController, thirdNavigationViewController, fourthNavigationViewController]
        
        controller.tabBar.backgroundColor = .systemBackground
        controller.tabBar.tintColor = .systemGray
        controller.setViewControllers(controllers, animated: true)
        
    }
}

