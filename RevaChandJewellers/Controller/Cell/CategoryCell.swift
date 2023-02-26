//
//  CategoryCell.swift
//  RevaChandJewellers
//
//  Created by Rohit Kumar on 2/14/23.
//

import UIKit

class CategoryCell: UICollectionViewCell {

    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var imageIcon: UIImageView!
    @IBOutlet weak var titleLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func configureModel(data: CategoryModel) {
        imageIcon.image = data.image
        titleLbl.text = data.title
    }

}
