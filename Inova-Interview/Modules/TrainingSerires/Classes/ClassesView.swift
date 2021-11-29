//
//  ClassesView.swift
//  Inova-Interview
//
//  Created by Toka elkeik on 11/29/21.
//

import UIKit

class ClassesView: BaseViewController, Storyboarded {

    // MARK: - IBOutlet
    @IBOutlet weak var classsesTable: UITableView!
    
    // MARK: - LifeCycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    // MARK: - Properties
    static var storyboardName: String = "Classes"
    
    // MARK: - setupView
    private func setupView() {
        classsesTable.dataSource = self
        registerCell(name: VideoCell.cellId)
    }
    
    func registerCell(name: String) {
        let nib = UINib(nibName: name, bundle: nil)
        classsesTable.register(nib, forCellReuseIdentifier: name)
    }
    
    // MARK: - Initilization
    static func create() -> ClassesView {
        let classesView = ClassesView.instantiate(storyboardName: storyboardName)
        return classesView
    }
}

// MARK: - UITableViewDataSource
extension ClassesView: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = classsesTable
            .dequeueReusableCell(withIdentifier: VideoCell.cellId) as! VideoCell
       
        return cell
    }
}
