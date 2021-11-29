//
//  OverviewView.swift
//  Inova-Interview
//
//  Created by Toka elkeik on 11/29/21.
//

import UIKit

class OverviewView: BaseViewController, Storyboarded {
    
    // MARK: - IBOutlets
    @IBOutlet weak var overViewTable: UITableView!
    
    // MARK: - LifeCycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    // MARK: - Properties
    static var storyboardName: String = "Overview"
    
    // MARK: - Initilization
    static func create() -> OverviewView {
        let overviewView = OverviewView.instantiate(storyboardName: storyboardName)
        return overviewView
    }
    
    // MARK: - setupView
    private func setupView() {
        overViewTable.dataSource = self
        registerCell(name: DescriptionCell.cellId)
    }
    
    func registerCell(name: String) {
        let nib = UINib(nibName: name, bundle: nil)
        overViewTable.register(nib, forCellReuseIdentifier: name)
    }
}

// MARK: - UITableViewDataSource
extension OverviewView: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.row {
        case 0:
            return getDescriptionCell()
        default:
            return getDescriptionCell()
        }
    }
    
    
    private func getDescriptionCell() -> UITableViewCell {
        let cell = overViewTable
            .dequeueReusableCell(withIdentifier: DescriptionCell.cellId) as! DescriptionCell
       
        return cell
    }
}
