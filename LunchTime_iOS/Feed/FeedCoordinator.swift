//
//  FeedCoordinator.swift
//  LunchTime_iOS
//
//  Created by Blaz on 14/08/2018.
//  Copyright © 2018 Blaz. All rights reserved.
//

import UIKit

class FeedCoordinator: Coordinator {
    
    private var navigationController = BaseNavigationController()
    
    @discardableResult
    func start() -> UIViewController {
        let vc = FeedViewController.instance()
//        vc.shouldNavigateToLobby = { [weak self] userType in
//            
//            self?.onComplete?(userType)
//        }
        
        navigationController.viewControllers = [vc]
        vc.navigationBarDisplayMode = .always
        return navigationController
    }
}
