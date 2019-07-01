//
//  ItemViewController.swift
//  online-shop
//
//  Created by Ostrenkiy on 01/07/2019.
//  Copyright © 2019 Ostrenkiy. All rights reserved.
//

import UIKit

class ItemViewController: UIViewController {

    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var itemImageView: UIImageView!
    @IBOutlet weak var addToCartButton: UIButton!
    
    var item: ShoppingItem?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        initialize()
        // Do any additional setup after loading the view.
    }
    
    func initialize() {
        guard let item = item else {
            return
        }
        
        itemImageView.image = item.image
        titleLabel.text = item.title
        descriptionLabel.text = item.description
        addToCartButton.setTitle("Купить за \(item.price)", for: .normal)
    }
    
    @IBAction func addToCartPressed(_ sender: Any) {
        guard let item = item else {
            return
        }
        
        item.addToCart()
        print(cart)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
