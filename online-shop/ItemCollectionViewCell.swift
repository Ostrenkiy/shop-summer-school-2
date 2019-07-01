//
//  ItemCollectionViewCell.swift
//  online-shop
//
//  Created by Ostrenkiy on 01/07/2019.
//  Copyright © 2019 Ostrenkiy. All rights reserved.
//

import UIKit

class ItemCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var itemImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func initWith(item: ShoppingItem) {
        itemImageView.image = item.image
        titleLabel.text = item.title
        priceLabel.text = "\(item.price) р."
    }
}
