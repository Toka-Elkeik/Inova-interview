//
//  VideoCell.swift
//  Inova-Interview
//
//  Created by Toka elkeik on 11/29/21.
//

import UIKit

class VideoCell: UITableViewCell {
    // MARK: - Properties
    static let cellId = String(describing: VideoCell.self)
    
    // MARK: - IBOutlets
    @IBOutlet private weak var videoNumber: UILabel!
    @IBOutlet private weak var videoImage: UIImageView!
    @IBOutlet private weak var cellTitle: UILabel!
    @IBOutlet private weak var cellDescription: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    // MARK: - Cell setters
    func setVideoNumber(number: String) {
        videoNumber.text = number
    }
    
    func setImage(image: UIImage) {
        videoImage.image = image
    }
    
    func setCellTitle(title: String) {
        cellTitle.text = title
    }
    
    func setCellDesription(description: String) {
        cellDescription.text = description
    }
}
