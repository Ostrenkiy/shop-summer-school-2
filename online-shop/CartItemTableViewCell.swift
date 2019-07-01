//
//  CartItemTableViewCell.swift
//  online-shop
//
//  Created by Ostrenkiy on 01/07/2019.
//  Copyright © 2019 Ostrenkiy. All rights reserved.
//

import UIKit

class CartItemTableViewCell: UITableViewCell {

    @IBOutlet weak var itemCountLabel: UILabel!
    @IBOutlet weak var itemLabel: UILabel!
    @IBOutlet weak var itemImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func initWith(item: ShoppingItem, count: Int) {
        itemImageView.image = item.image
        itemLabel.text = item.title
        itemCountLabel.text = "\(count) шт."
    }
    
}
