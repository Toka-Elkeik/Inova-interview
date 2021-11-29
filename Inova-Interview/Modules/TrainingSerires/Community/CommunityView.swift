//
//  CommunityView.swift
//  Inova-Interview
//
//  Created by Toka elkeik on 11/29/21.
//

import UIKit

class CommunityView: BaseViewController, Storyboarded {

    // MARK: - LifeCycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - Properties
    static var storyboardName: String = "Community"
    
    // MARK: - Initilization
    static func create() -> CommunityView {
        let communityView = CommunityView.instantiate(storyboardName: storyboardName)
        return communityView
    }
}
