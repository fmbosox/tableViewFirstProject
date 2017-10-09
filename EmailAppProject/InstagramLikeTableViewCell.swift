//
//  InstagramLikeTableViewCell.swift
//  EmailAppProject
//
//  Created by Felipe Montoya on 10/8/17.
//  Copyright © 2017 Felipe Montoya. All rights reserved.
//

import UIKit

class InstagramLikeTableViewCell: UITableViewCell {

    @IBOutlet weak var instagramImage: UIImageView!
    
    @IBOutlet weak var userImage: UIImageView!
    
    @IBOutlet weak var userNameLabel: UILabel!
    
    @IBOutlet weak var imageDescriptionLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
