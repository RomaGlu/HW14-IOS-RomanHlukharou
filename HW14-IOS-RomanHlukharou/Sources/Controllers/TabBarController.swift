//
//  TabBarController.swift
//  HW14-IOS-RomanHlukharou
//
//  Created by Роман Глухарев on 11/07/2023.
//

import UIKit

class TabBarController: UITabBarController, UITabBarControllerDelegate {
    
    //MARK: - Lyfecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        delegate = self
        setupTabBarController()
        setupTabBarViewControllers()
    }
    
    //MARK: - Layout
    
    func setupTabBarController() {
        tabBar.tintColor = .systemBlue
        tabBar.backgroundColor = .systemBackground
    }
    
    func setupTabBarViewControllers() {
        
        let firstViewController = LibraryViewController()
        let firstIcon = UITabBarItem(title: "Library", image: UIImage(systemName: "photo.fill.on.rectangle.fill"), selectedImage: UIImage(systemName: "photo.fill.on.rectangle.fill"))
        firstViewController.tabBarItem = firstIcon
        
        let secondViewController = ForYouViewController()
        let secondIcon = UITabBarItem(title: "For You", image: UIImage(systemName: "heart.text.square.fill"), selectedImage: UIImage(systemName: "heart.text.square.fill"))
        secondViewController.tabBarItem = secondIcon
        
        let thirdViewController = AlbumViewController()
        let thirdIcon = UITabBarItem(title: "Albums", image: UIImage(systemName: "rectangle.stack.fill"), selectedImage: UIImage(systemName: "rectangle.stack.fill"))
        thirdViewController.navigationController?.navigationBar.prefersLargeTitles = true
        thirdViewController.tabBarItem = thirdIcon
        
        let fourthViewController = SearchViewController()
        let fourthIcon = UITabBarItem(title: "Search", image: UIImage(systemName: "magnifyingglass"), selectedImage: UIImage(systemName: "magnifyingglass"))
        fourthViewController.tabBarItem = fourthIcon
        
        let controllers = [firstViewController, secondViewController, thirdViewController, fourthViewController]
        self.setViewControllers(controllers, animated: true)
        
    }
    
    func tabBarController(_ tabBarController: UITabBarController, shouldSelect viewController: UIViewController) -> Bool {
        return true
    }
    
    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
        navigationItem.title = "Albums"
        navigationItem.leftBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addTapped))
        
    }
    
    @objc func addTapped() {
        
    }
}
