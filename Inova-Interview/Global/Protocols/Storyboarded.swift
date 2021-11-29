//
//  Storyboarded.swift
//  Inova-Interview
//
//  Created by Toka elkeik on 11/29/21.
//

import UIKit

protocol Storyboarded: NSObject {
    static func instantiate(storyboardName: String) -> Self
    static var storyboardName: String { get }
}

extension Storyboarded where Self: UIViewController {

    static func instantiate(storyboardName: String) -> Self {
        let storyboardId = String(describing: self)
        let storyboard = UIStoryboard(name: storyboardName, bundle: .main)
        let view = storyboard.instantiateViewController(withIdentifier: storyboardId) as? Self
        return view ?? Self()
    }
}
