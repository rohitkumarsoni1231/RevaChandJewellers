//
//  ShadowView.swift
//  RevaChandJewellers
//
//  Created by Rohit Kumar on 2/14/23.
//

import UIKit

class ShadowView: UIView {

    override func awakeFromNib() {
        layer.shadowPath = CGPath(rect: layer.bounds, transform: nil)
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOffset = CGSize(width: 1, height: 1)
        layer.shadowOpacity = 1
        layer.shadowRadius = 2
        layer.cornerRadius = 5
    }
}
