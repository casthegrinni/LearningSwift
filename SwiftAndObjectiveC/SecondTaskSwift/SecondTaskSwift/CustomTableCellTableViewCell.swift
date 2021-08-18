//
//  CustomTableCellTableViewCell.swift
//  SecondTaskSwift
//
//  Created by Brunno Castigrini on 17/08/21.
//

import UIKit

class CustomTableCellTableViewCell: UITableViewCell {
    @IBOutlet weak var leftLabel: UILabel!
    @IBOutlet weak var rightImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
}
