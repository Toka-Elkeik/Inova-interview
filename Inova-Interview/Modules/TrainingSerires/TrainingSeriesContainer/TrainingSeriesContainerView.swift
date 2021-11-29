//
//  TrainingSeriesContainerView.swift
//  Inova-Interview
//
//  Created by Toka elkeik on 11/29/21.
//

import UIKit

class TrainingSeriesContainerView: BaseViewController, Storyboarded {
    
    // MARK: - IBOutlets
    @IBOutlet private weak var backgroundImage: UIImageView!
    @IBOutlet private weak var seriesName: UILabel!
    @IBOutlet private weak var coachName: UILabel!
    @IBOutlet private weak var startPracticeButton: UIButton!
    @IBOutlet private weak var segmentedControl: UISegmentedControl!
    @IBOutlet private weak var containerView: UIView!
    
    // MARK: - LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - Initilization
    static func create() -> BaseViewController {
        let trainingSeriesContainerView = TrainingSeriesContainerView.instantiate(storyboardName: storyboardName)
        return trainingSeriesContainerView
    }
    
    // MARK: - Properties
    static var storyboardName: String = "TrainingSeriesContainer"
    
    
    // MARK: - Actions
    @IBAction func didClickStartPractice(_ sender: UIButton) {
    }
    
    
    @IBAction func didSelectSegment(_ sender: UISegmentedControl) {
    }
    
}
