//
//  DataTableViewCell.swift
//  CustomCell
//
//  Created by Shishir_Mac on 6/3/23.
//

import UIKit

class DataTableViewCell: UITableViewCell {

    @IBOutlet weak var contentsView: UIView!
    @IBOutlet weak var tableImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        contentsView.layer.cornerRadius = 10
        contentsView.dropShadow()
        
        titleLabel.text = nil
        timeLabel.text = nil
        tableImageView.image = nil
        priceLabel.text = nil
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    // MARK: Cell Configuration
    
    func configurateTheCell(_ recipe: Recipe) {
        titleLabel.text = recipe.name
        timeLabel.text = "Prep Time: " + recipe.prepTime
        tableImageView.image = UIImage(named: recipe.thumbnails)
        priceLabel.text = "Price: \(recipe.price)$"
    }
}
