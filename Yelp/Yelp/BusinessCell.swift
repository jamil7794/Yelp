//
//  BusinessCell.swift
//  Yelp
//
//  Created by Jamil Jalal on 9/23/18.
//  Copyright © 2018 Timothy Lee. All rights reserved.
//

import UIKit

class BusinessCell: UITableViewCell {

    @IBOutlet weak var thumubImageView: UIImageView!
    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var distanceLbl: UILabel!
    @IBOutlet weak var ratingImageView: UIImageView!
    @IBOutlet weak var reviewsLbl: UILabel!
    @IBOutlet weak var addressLbl: UILabel!
    @IBOutlet weak var categoryLbl: UILabel!
    
    var business: Business! {
        didSet {
            nameLbl.text = business.name
            thumubImageView.setImageWith(business.imageURL!)
            categoryLbl.text = business.categories
            addressLbl.text = business.address
            reviewsLbl.text = "\(business.reviewCount!) Reviews"
            ratingImageView.image = business.ratingImage
            distanceLbl.text = business.distance
        }
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        thumubImageView.layer.cornerRadius = 3
        thumubImageView.clipsToBounds = true
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
