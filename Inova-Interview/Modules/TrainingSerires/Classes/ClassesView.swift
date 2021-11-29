//
//  ClassesView.swift
//  Inova-Interview
//
//  Created by Toka elkeik on 11/29/21.
//

import UIKit

class ClassesView: BaseViewController, Storyboarded {

    
    // MARK: - LifeCycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - Properties
    static var storyboardName: String = "Classes"
    
    // MARK: - Initilization
    static func create() -> ClassesView {
        let classesView = ClassesView.instantiate(storyboardName: storyboardName)
        return classesView
    }

}
