//
//  ChainVC.swift
//  RevaChandJewellers
//
//  Created by Rohit Kumar on 2/15/23.
//

import UIKit

class ChainVC: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    var chainData = [ChainModel]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        getChainData()
        
        collectionView.delegate = self
        collectionView.dataSource = self
    }
    
    func getChainData() {
        chainData.append(ChainModel(title: "Italian Chain", serialNo: "CH-00001", price: "PKR 1999",image: UIImage(named: "chain1"), metal: "silver", length: "50cm - 60cm", style: "Width Curb Chain in Sterling Silver"))
        chainData.append(ChainModel(title: "Italian Chain", serialNo: "CH-00002", price: "PKR PKR 2099",image: UIImage(named: "chain2"), metal: "silver", length: "50cm - 60cm", style: "Width Curb Chain in Sterling Silver"))
        chainData.append(ChainModel(title: "Golden Chain", serialNo: "CH-00003", price: "PKR 45199",image: UIImage(named: "chain3"), metal: "Gold", length: "50cm - 60cm", style: "Width Solid Cable Chain Gold"))
        chainData.append(ChainModel(title: "Disk Necklace", serialNo: "CH-00004", price: "PKR 2299",image: UIImage(named: "chain4"), metal: "silver", length: "45cm", style: "Sterling Silver"))
        chainData.append(ChainModel(title: "Italian Chain", serialNo: "CH-00005", price: "PKR 2299",image: UIImage(named: "chain5"), metal: "silver", length: "50cm - 60cm", style: "Width Curb Chain in Sterling Silver"))
        chainData.append(ChainModel(title: "Silver Chain", serialNo: "CH-00006", price: "PKR 2299",image: UIImage(named: "chain6"), metal: "silver", length: "50cm - 60cm", style: "Multi-Layer Bead Chain in Sterling Silver"))
        chainData.append(ChainModel(title: "Golden Chain", serialNo: "CH-00007", price: "PKR 2299",image: UIImage(named: "chain7"), metal: "Gold", length: "45cm", style: "Snake and Bead Mutli-Layer Chain in 10kt Yellow Gold"))
        chainData.append(ChainModel(title: "Golden Chain", serialNo: "CH-00008", price: "PKR 2299",image: UIImage(named: "chain8"), metal: "Gold", length: "45cm", style: "Hollow Oval Paperclip Chain in 10kt Yellow Gold"))
        chainData.append(ChainModel(title: "Golden Chain", serialNo: "CH-00009", price: "PKR 2299",image: UIImage(named: "chain9"), metal: "Gold", length: "45cm", style: "Hollow Belcher Fob Necklace in 10kt Yellow Gold"))
        chainData.append(ChainModel(title: "Golden Chain", serialNo: "CH-000010", price: "PKR 2299",image: UIImage(named: "chain10"), metal: "Gold", length: "50cm", style: "Hollow Curb Chain in 10kt Yellow Gold"))
        //        chainData.append(ChainModel(title: "Italian Chain", serialNo: "CH-000011", price: "PKR 2299",image: UIImage(named: "chain11"), metal: "silver", length: "50cm - 60cm", style: "Width Curb Chain in Sterling Silver"))
        //        chainData.append(ChainModel(title: "Italian Chain", serialNo: "CH-000012", price: "PKR 2299",image: UIImage(named: "chain12"), metal: "silver", length: "50cm - 60cm", style: "Width Curb Chain in Sterling Silver"))
        //        chainData.append(ChainModel(title: "Italian Chain", serialNo: "CH-000013", price: "PKR 2299",image: UIImage(named: "chain13"), metal: "silver", length: "50cm - 60cm", style: "Width Curb Chain in Sterling Silver"))
        
    }
    
}


extension ChainVC : UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return chainData.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ChainCellId", for: indexPath) as? ChainCell else { return UICollectionViewCell() }
        cell.configure(data: chainData[indexPath.item])
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 190, height: 280)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 2.0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 1.0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 5, left: 1, bottom: 5, right: 1)
    }
    
    
}
