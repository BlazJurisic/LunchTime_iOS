//
//  MainCoordinator.swift
//  LunchTime_iOS
//
//  Created by Blaz on 14/08/2018.
//  Copyright © 2018 Blaz. All rights reserved.
//
import UIKit

class MainCoordinator: Coordinator {
    
    fileprivate var childCoordinators: [Coordinator] = [
        FeedCoordinator(),
        MapViewCoordinator()
    ]
    
    @discardableResult
    func start()-> UIViewController {
        return startFeed()
    }
    
//    private func createLogin()-> UIViewController {
//    }
    
    @discardableResult
    func startFeed()-> UIViewController {
        let tabBarController = createTabBarController()
        tabBarController.showAsRoot()
        return tabBarController
    }
}

// MARK: - Main tab bar
extension MainCoordinator {
    fileprivate func tabBarItem(for coordinator: Coordinator)-> UITabBarItem {
        switch coordinator {
        case is FeedCoordinator:
            return .feed
        case is MapViewCoordinator:
            return .map
        default:
            fatalError("No tab bar set for this coordinator!")
        }
    }
    
    fileprivate func createTabBarController()-> UITabBarController {
        let tabBarController = UITabBarController()
        let viewControllers = childCoordinators.map { coordinator-> UIViewController in
            let vc = coordinator.start()
            vc.tabBarItem = tabBarItem(for: coordinator)
            return vc
        }
        tabBarController.viewControllers = viewControllers
        return tabBarController
    }
}

extension UITabBarItem {
    static let feed = UITabBarItem(title: "searches", image: #imageLiteral(resourceName: "outline_dns_black_18dp"), selectedImage: nil)
    static let map = UITabBarItem(title: "find", image: #imageLiteral(resourceName: "outline_dns_black_18dp"), selectedImage: nil)
}
