//
//  MapViewController.swift
//  LunchTime_iOS
//
//  Created by Blaz on 17/08/2018.
//  Copyright © 2018 Blaz. All rights reserved.
//

import UIKit
import GoogleMaps

final class MapViewController: BaseViewController {
    
    let mockDataSource = ["grozd", "kiwi", "apple", "mango", "patricia", "blaz", "beer"]
    
    // MARK: - Outlets
    
    @IBOutlet weak var tableView: UITableView!
    // MARK: - Navigation callbacks
    
    var onShouldGoToActionsList: (() -> Void)?
    var onShouldGoToCreateAction: (() -> Void)?
    
    @IBAction func goToActionsList(_ sender: UIButton) {
        self.onShouldGoToActionsList?()
    }
    @IBAction func goToCreateAction(_ sender: UIButton) {
        self.onShouldGoToCreateAction?()
    }
    
    
    // MARK: - Lifecycle
    
    override func loadView() {
        // Create a GMSCameraPosition that tells the map to display the
        // coordinate -33.86,151.20 at zoom level 6.
        let camera = GMSCameraPosition.camera(withLatitude: -33.86, longitude: 151.20, zoom: 6.0)
        let mapView = GMSMapView.map(withFrame: CGRect.zero, camera: camera)
        view = mapView
        
        // Creates a marker in the center of the map.
        let marker = GMSMarker()
        marker.position = CLLocationCoordinate2D(latitude: -33.86, longitude: 151.20)
        marker.title = "Sydney"
        marker.snippet = "Australia"
        marker.map = mapView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        //automaticallyAdjustsScrollViewInsets = false
        
        // MARK: - UserInteraction
        
        
        
    }
}
