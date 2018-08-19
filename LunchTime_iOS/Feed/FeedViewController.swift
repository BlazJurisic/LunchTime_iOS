//
//  FeedViewController.swift
//  LunchTime_iOS
//
//  Created by Blaz on 14/08/2018.
//  Copyright © 2018 Blaz. All rights reserved.
//

import UIKit

class FeedViewController: BaseViewController {
    
    let mockDataSource = ["hblag", "kiwi", "apple", "mango", "patricia", "blaz", "beer"]
    
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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        //automaticallyAdjustsScrollViewInsets = false
    
        // MARK: - UserInteraction
        
        
        
    }
}

extension FeedViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat
    {
        return 150.0;//Choose your custom row height
    }
    
}
extension FeedViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! FeedCell
        cell.titleLabel.text = mockDataSource[indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mockDataSource.count
    }
    
}
