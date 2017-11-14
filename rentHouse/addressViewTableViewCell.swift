//
//  addressViewTableViewCell.swift
//  rentHouse
//
//  Created by Lavpreet Kaur on 2017-11-07.
//  Copyright © 2017 RishuKhullar. All rights reserved.
//

import UIKit

class addressViewTableViewCell: UITableViewCell {

    @IBOutlet weak var address: UILabel!
    @IBOutlet weak var price: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
