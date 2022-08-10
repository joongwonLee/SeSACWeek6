//
//  MainTableViewCell.swift
//  SeSACWeek6
//
//  Created by 이중원 on 2022/08/09.
//

import UIKit

class MainTableViewCell: UITableViewCell {

    //contentCollectionView도 delegate, datasource가 필요
    @IBOutlet weak var contentCollectionView: UICollectionView!
    @IBOutlet weak var titleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        print("MainTableViewCell", #function)
        
        setupUI()
        
    }
    
    func setupUI() {
        titleLabel.font = .boldSystemFont(ofSize: 24)
        titleLabel.backgroundColor = .clear
        
        contentCollectionView.backgroundColor = .clear
        contentCollectionView.collectionViewLayout = collectionViewLayout()
    }
    
    func collectionViewLayout() -> UICollectionViewFlowLayout {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.itemSize = CGSize(width: 200, height: 180)
        layout.minimumLineSpacing = 16
        layout.minimumInteritemSpacing = 16
        layout.sectionInset = UIEdgeInsets(top: 0, left: 16, bottom: 0, right: 0)
        return layout
    }

}
