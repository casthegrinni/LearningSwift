//
//  CustomCell.swift
//  SecondTaskSwift
//
//  Created by Brunno Castigrini on 17/08/21.
//

import UIKit

class CustomCell: UITableViewCell {
    // static let identifier = "cell"
    @IBOutlet weak var customCellLabel: UILabel!
    @IBOutlet weak var customCellImage: UIImageView!
    @IBOutlet weak var cellView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
