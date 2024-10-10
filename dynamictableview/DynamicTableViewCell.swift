//
//  DynamicTableViewCell.swift
//  dynamictableview
//
//  Created by Neosoft on 30/09/24.
//

import UIKit

class DynamicTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    @IBOutlet weak var ldynamictext: UILabel!
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
