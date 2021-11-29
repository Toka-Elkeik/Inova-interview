//
//  BaseViewController.swift
//  Inova-Interview
//
//  Created by Toka elkeik on 11/29/21.
//

import UIKit

class BaseViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        styleNavigationBar()
    }

    // MARK: - Style Navigation Bar
    private func styleNavigationBar() {
        navigationController?.navigationBar.isHidden = false
        navigationController?.navigationBar.tintColor = .black
        navigationController?.navigationBar.topItem?.title = " "
        navigationController?.navigationItem.backButtonTitle = ""
        navigationController?
            .navigationBar
            .setBackgroundImage(UIImage(),
                                for: UIBarPosition.any,
                                barMetrics: UIBarMetrics.default)
        navigationController?.navigationBar.shadowImage = UIImage()
    }
}
