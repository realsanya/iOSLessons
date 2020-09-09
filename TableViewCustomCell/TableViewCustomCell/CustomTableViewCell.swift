//
//  CustomTableViewCell.swift
//  TableViewCustomCell
//
//  Created by Student 6 on 09/09/2020.
//  Copyright © 2020 Student 6. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    
    @IBOutlet weak var cellView: UIView!
    @IBOutlet weak var animalImage: UIImageView!
    @IBOutlet weak var animalLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

   

}
