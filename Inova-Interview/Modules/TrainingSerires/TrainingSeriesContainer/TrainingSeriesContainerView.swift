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
        setupView()
    }
    
    // MARK: - Initilization
    static func create() -> BaseViewController {
        let trainingSeriesContainerView = TrainingSeriesContainerView.instantiate(storyboardName: storyboardName)
        return trainingSeriesContainerView
    }
    
    // MARK: - Properties
    static var storyboardName: String = "TrainingSeriesContainer"
    
    lazy private var overviewView: OverviewView = {
        let overview = OverviewView.create()
        overview.view.frame = containerView.bounds
        return overview
    }()
    
    lazy private var classesView: ClassesView = {
        let classes = ClassesView.create()
        classes.view.frame = containerView.bounds
        return classes
    }()
    
    lazy private var communityView: CommunityView = {
        let community = CommunityView.create()
        community.view.frame = containerView.bounds
        return community
    }()
    
    // MARK: - viewSet up
    private func setupView() {
        addView(asChildViewController: overviewView)
    }
    
    // MARK: - Actions
    @IBAction func didClickStartPractice(_ sender: UIButton) {
    }
    
    
    @IBAction func didSelectSegment(_ sender: UISegmentedControl) {
        switch segmentedControl.selectedSegmentIndex {
        case 0:
            addView(asChildViewController: overviewView)
            removeView(asChildViewController: classesView)
            removeView(asChildViewController: communityView)

        case 1:
            addView(asChildViewController: classesView)
            removeView(asChildViewController: overviewView)
            removeView(asChildViewController: communityView)

        case 2:
            addView(asChildViewController: communityView)
            removeView(asChildViewController: classesView)
            removeView(asChildViewController: overviewView)

        default:
            break
        }
    }
    
    private func addView(asChildViewController viewController: UIViewController) {
        addChild(viewController)
        containerView.addSubview(viewController.view)
        viewController.didMove(toParent: self)
    }
    
    private func removeView(asChildViewController viewController: UIViewController) {
        viewController.willMove(toParent: nil)
        viewController.view.removeFromSuperview()
        viewController.removeFromParent()
    }
}
