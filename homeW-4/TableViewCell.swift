//
//  TableViewCell.swift
//  homeW-4
//
//  Created by Nurjamal Mirbaizaeva on 17/3/23.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var avatarImage: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var itemLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    func configure(image: String, names: String, item: String){
        avatarImage.image = UIImage(named: image)
        nameLabel.text = names
        itemLabel.text = item
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
