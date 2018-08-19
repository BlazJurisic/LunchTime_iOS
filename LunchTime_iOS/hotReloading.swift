////
////  hotReloading.swift
////  LunchTime_iOS
////
////  Created by Blaz on 15/08/2018.
////  Copyright © 2018 Blaz. All rights reserved.
////
//
//import UIKit
//
//extension UIViewController { //5
//
//    #if DEBUG //1
//    @objc func injected() { //2
//     
//         print("I've been injected: \(self)")
//        viewDidLoad() //4
//    }
//    #endif
//}
////extension UIViewController {
////
////    #if DEBUG
////    @objc func injected() {
////
////        for subview in self.view.subviews {
////            subview.removeFromSuperview()
////        }
////        if let sublayers = self.view.layer.sublayers {
////            for sublayer in sublayers {
////                sublayer.removeFromSuperlayer()
////            }
////        }
////
////        viewDidLoad()
////    }
////    #endif
////}
