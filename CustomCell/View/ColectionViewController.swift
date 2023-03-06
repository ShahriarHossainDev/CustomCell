//
//  ColectionViewController.swift
//  CustomCell
//
//  Created by Shishir_Mac on 6/3/23.
//

import UIKit

class ColectionViewController: UIViewController {
    
    private var recipes = Recipe.createRecipes()
    private let cellIdentifier: String = "collectionCell"
    
    @IBOutlet weak var dataCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dataCollectionView.delegate = self
        dataCollectionView.dataSource = self
        
        self.dataCollectionView.register(UINib(nibName: "DataCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: cellIdentifier)
        // Do any additional setup after loading the view.
    }
    
}

// MARK: - UICollectionViewDelegate, UICollectionViewDataSource
extension ColectionViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return recipes.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellIdentifier, for: indexPath) as? DataCollectionViewCell {
            cell.configurateTheCell(recipes[indexPath.row])
            return cell
        }
        
        return UICollectionViewCell()
    }
    
}
