//
//  MapViewCoordinator.swift
//  LunchTime_iOS
//
//  Created by Blaz on 17/08/2018.
//  Copyright © 2018 Blaz. All rights reserved.
//

import UIKit

class MapViewCoordinator: Coordinator {
    
    private var navigationController = BaseNavigationController()
    
    @discardableResult
    func start() -> UIViewController {
        let vc = MapViewController.instance()
        //        vc.shouldNavigateToLobby = { [weak self] userType in
        //
        //            self?.onComplete?(userType)
        //        }
        
        navigationController.viewControllers = [vc]
        vc.navigationBarDisplayMode = .always
        return navigationController
    }
}
