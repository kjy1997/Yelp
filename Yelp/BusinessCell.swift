//
//  BusinessCell.swift
//  Yelp
//
//  Created by Jiayi Kou on 2/2/16.
//  Copyright © 2016 Timothy Lee. All rights reserved.
//

import UIKit

class BusinessCell: UITableViewCell {

    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var thumbImageView: UIImageView!
    
    @IBOutlet var ratingImageView: UIImageView!
    @IBOutlet var distanceLabel: UILabel!
    @IBOutlet var reviewLabel: UILabel!
    @IBOutlet var dollarLabel: UILabel!
    @IBOutlet var descriptionLabel: UILabel!
    @IBOutlet var addressLabel: UILabel!
    
    var business : Business! {
        didSet{
            titleLabel.text = business.name
            thumbImageView.setImageWithURL(business.imageURL!)
            ratingImageView.setImageWithURL(business.ratingImageURL!)
            distanceLabel.text = business.distance
            descriptionLabel.text = business.categories
            addressLabel.text = business.address
            reviewLabel.text = "\(business.reviewCount!) Reviews"
            
        }
    }
    
    var filteredBusiness : Business! {
        didSet{
            titleLabel.text = filteredBusiness.name
//            thumbImageView.setImageWithURL(filteredBusiness.imageURL!)
            ratingImageView.setImageWithURL(filteredBusiness.ratingImageURL!)
            distanceLabel.text = filteredBusiness.distance
            descriptionLabel.text = filteredBusiness.categories
            addressLabel.text = filteredBusiness.address
            reviewLabel.text = "\(filteredBusiness.reviewCount!) Reviews"
            
        }
    }
     override func awakeFromNib() {
        super.awakeFromNib()
        thumbImageView.layer.cornerRadius = 3
        thumbImageView.clipsToBounds = true
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
