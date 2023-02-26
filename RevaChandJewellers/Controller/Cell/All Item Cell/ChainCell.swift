//
//  ChainCell.swift
//  RevaChandJewellers
//
//  Created by Rohit Kumar on 2/15/23.
//

import UIKit

class ChainCell: UICollectionViewCell {
    
    @IBOutlet weak var containerView: ShadowView!
    @IBOutlet weak var metalLbl: UILabel!
    @IBOutlet weak var imageIcon: UIImageView!
    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var styleLbl: UILabel!
    @IBOutlet weak var serialNoLbl: UILabel!
    @IBOutlet weak var priceLbl: UILabel!
    @IBOutlet weak var lengthLbl: UILabel!
    
    func configure(data: ChainModel) {
        metalLbl.text = data.metal
        imageIcon.image = data.image
        titleLbl.text = data.title
        styleLbl.text = data.style
        serialNoLbl.text = data.serialNo
        priceLbl.text = data.price
        lengthLbl.text = data.length
        
    }
    
}
