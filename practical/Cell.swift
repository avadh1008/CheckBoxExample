//
//  Cell.swift
//  practical
//
//  Created by Avadh Mewada on 6/18/20.
//  Copyright © 2020 Avadh Mewada. All rights reserved.
//

import UIKit

class Cell: UITableViewCell {

    @IBOutlet var numbersLabel: UILabel!
    @IBOutlet var checkBox: buttonClass!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

}
