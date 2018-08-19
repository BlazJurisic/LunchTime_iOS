//
//  Coordinator.swift
//  LunchTime_iOS
//
//  Created by Blaz on 14/08/2018.
//  Copyright © 2018 Blaz. All rights reserved.
//
import UIKit

public protocol Coordinator: class {
    
    @discardableResult
    func start() -> UIViewController
}
