//
//  DataCollectionViewCell.swift
//  CustomCell
//
//  Created by Shishir_Mac on 6/3/23.
//

import UIKit

class DataCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var picImageView: UIImageView!
    @IBOutlet weak var ConView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        nameLabel.text = nil
        picImageView.image = nil
        
        ConView.dropShadow()
    }
    
// MARK: - Cell Configuration
    func configurateTheCell(_ recipe: Recipe) {
        nameLabel.text = recipe.name
        picImageView.image = UIImage(named: recipe.thumbnails)
    }
    

}
