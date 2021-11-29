//
//  OverviewView.swift
//  Inova-Interview
//
//  Created by Toka elkeik on 11/29/21.
//

import UIKit

class OverviewView: BaseViewController, Storyboarded {

    @IBOutlet weak var overViewTable: UITableView!
    
    // MARK: - LifeCycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - Properties
    static var storyboardName: String = "Overview"
    
    // MARK: - Initilization
    static func create() -> OverviewView {
        let overviewView = OverviewView.instantiate(storyboardName: storyboardName)
        return overviewView
    }
}
