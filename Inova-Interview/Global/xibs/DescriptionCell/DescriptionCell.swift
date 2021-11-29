//
//  DescriptionCell.swift
//  Inova-Interview
//
//  Created by Toka elkeik on 11/29/21.
//

import UIKit

class DescriptionCell: UITableViewCell {
    
    @IBOutlet private weak var descriptionLabel: UILabel!
    @IBOutlet private weak var readMoreButton: UIButton!
    
    // MARK: - Properties
    static let cellId = String(describing: DescriptionCell.self)
    var didClickReadMore: (() -> Void)?
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    @IBAction func didClickButton(_ sender: UIButton) {
        didClickReadMore?()
    }
    
    func setDescription(description: String) {
        descriptionLabel.text = description
    }
}
