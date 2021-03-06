//
//  MovieCell.swift
//  Flicks
//
//  Created by Kausthub Poondi on 1/30/17.
//  Copyright © 2017 Kausthub Poondi. All rights reserved.
//

import UIKit

class MovieCell: UITableViewCell {
    
    
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var overview: UILabel!
    @IBOutlet weak var posterView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
     
        let bgColorView = UIView()
        bgColorView.backgroundColor = UIColor.blue
        super.selectedBackgroundView = bgColorView
    }
    
}
