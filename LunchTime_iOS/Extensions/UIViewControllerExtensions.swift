//
//  UIViewControllerExtensions.swift
//  LunchTime_iOS
//
//  Created by Blaz on 14/08/2018.
//  Copyright © 2018 Blaz. All rights reserved.
//

import UIKit
extension UIViewController {
    var window: UIWindow? {
        return self.view.window ?? (UIApplication.shared.delegate as! AppDelegate).window
    }
    var contentViewController: UIViewController? {
        if let navigationViewController = self as? UINavigationController {
            return navigationViewController.topViewController?.contentViewController
        } else {
            return self
        }
    }
    func showAsRoot() {
        guard let window = window else {
            return
        }
        window.rootViewController = self
        window.makeKeyAndVisible()
    }
}
