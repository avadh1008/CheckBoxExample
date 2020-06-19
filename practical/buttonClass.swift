//
//  buttonClass.swift
//  practical
//
//  Created by Avadh Mewada on 6/18/20.
//  Copyright © 2020 Avadh Mewada. All rights reserved.
//

import Foundation
import UIKit

class buttonClass: UIButton{
    
    let checkedImage = UIImage(named: "checked")! as UIImage
    let unCheckedImage = UIImage(named: "unchecked")! as UIImage
    
    var isChecked: Bool = false {
        didSet{
            if isChecked == true {
                self.setImage(unCheckedImage, for: .normal)
            } else {
                self.setImage(checkedImage, for: .normal)
            }
        }
    }
    override func awakeFromNib() {
        self.isUserInteractionEnabled = true
        self.addTarget(self, action: #selector(buttonClass.buttonClicked), for: .touchUpInside)
        self.isChecked = false
    }
    
    @objc func buttonClicked(sender: UIButton){
        if sender == self {
            if isChecked == true {
                isChecked = false
            }else {
                isChecked = true
            }
        }
    }
}

