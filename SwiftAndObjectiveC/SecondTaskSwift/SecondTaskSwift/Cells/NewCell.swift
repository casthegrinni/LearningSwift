//
//  NewCell.swift
//  SecondTaskSwift
//
//  Created by Brunno Castigrini on 17/08/21.
//

import UIKit

class NewCell: UITableViewCell {
    @IBOutlet weak var testingLabel: UILabel!
    
    @IBOutlet weak var testingImage: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
    }
    
}
