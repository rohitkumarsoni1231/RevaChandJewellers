//
//  ViewController.swift
//  RevaChandJewellers
//
//  Created by Rohit Kumar on 2/14/23.
//

import UIKit

class DashboardVC: UIViewController {

    @IBOutlet weak var categoriesCV: UICollectionView!
    @IBOutlet weak var newArrivalCV: UICollectionView!
    @IBOutlet weak var trendingNowCV: UICollectionView!
    
    var trendingNowData = [TrendingItemModel]()
    var newArrivalData = [NewArrivalModel]()
    
    var categoryData = [CategoryModel]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        categoriesCV.delegate = self
        categoriesCV.dataSource = self
        
        newArrivalCV.delegate = self
        newArrivalCV.dataSource = self
        
        trendingNowCV.delegate = self
        trendingNowCV.dataSource = self
        
        getCategoriesData()
        getNewArrivalData()
        getTrendingData()
                
        let nibName = UINib(nibName: "CategoryCell", bundle: nil)
        categoriesCV.register(nibName, forCellWithReuseIdentifier: "CategoryCellId")
        
        let arrivalNib = UINib(nibName: "NewArrivalCell", bundle: nil)
        newArrivalCV.register(arrivalNib, forCellWithReuseIdentifier: "NewArrivalCellId")
        
        let trendingNib = UINib(nibName: "TrendingNowCell", bundle: nil)
        trendingNowCV.register(trendingNib, forCellWithReuseIdentifier: "TrendingNowCellId")
    }
    
    func getCategoriesData() {
        categoryData.append(CategoryModel(title: "Chain", image: UIImage(named: "silver-chain")))
        categoryData.append(CategoryModel(title: "Gold", image: UIImage(named: "gold2")))
        categoryData.append(CategoryModel(title: "Silver", image: UIImage(named: "silver")))
        categoryData.append(CategoryModel(title: "Stone Set", image: UIImage(named: "stone-set")))
        categoryData.append(CategoryModel(title: "Pearl", image: UIImage(named: "pearl")))
        categoryData.append(CategoryModel(title: "Diamond", image: UIImage(named: "diamond")))
        categoryData.append(CategoryModel(title: "Cross", image: UIImage(named: "bracelet")))
        categoryData.append(CategoryModel(title: "Collectables", image: UIImage(named: "collectables")))
        categoryData.append(CategoryModel(title: "Initials", image: UIImage(named: "initials")))
    }
    
    func getNewArrivalData() {
        newArrivalData.append(NewArrivalModel(title: "", image: UIImage(named: "1")))
        newArrivalData.append(NewArrivalModel(title: "", image: UIImage(named: "2")))
        newArrivalData.append(NewArrivalModel(title: "", image: UIImage(named: "3")))
        newArrivalData.append(NewArrivalModel(title: "", image: UIImage(named: "4")))
        newArrivalData.append(NewArrivalModel(title: "", image: UIImage(named: "18")))
        newArrivalData.append(NewArrivalModel(title: "", image: UIImage(named: "19")))
        newArrivalData.append(NewArrivalModel(title: "", image: UIImage(named: "20")))
        newArrivalData.append(NewArrivalModel(title: "", image: UIImage(named: "21")))
    }
    
    func getTrendingData() {
        trendingNowData.append(TrendingItemModel(title: "", image: UIImage(named: "11")))
        trendingNowData.append(TrendingItemModel(title: "", image: UIImage(named: "12")))
        trendingNowData.append(TrendingItemModel(title: "", image: UIImage(named: "13")))
        trendingNowData.append(TrendingItemModel(title: "", image: UIImage(named: "14")))
        trendingNowData.append(TrendingItemModel(title: "", image: UIImage(named: "15")))
        trendingNowData.append(TrendingItemModel(title: "", image: UIImage(named: "16")))
        trendingNowData.append(TrendingItemModel(title: "", image: UIImage(named: "17")))
    }
    
    @IBAction func categoryViewAllBtnPressed(_ sender: Any) {
        if let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "AllCategoriesVC") as? AllCategoriesVC {
            self.navigationItem.backButtonTitle = ""
            self.navigationController?.pushViewController(vc, animated: true)
        }
    }
    

    @IBAction func newArrivalViewAllBtnPressed(_ sender: UIButton) {
    }
    
    
    @IBAction func trendingNowViewAllBtnPressed(_ sender: Any) {
    }
    
}


extension DashboardVC : UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == categoriesCV {
            return categoryData.count
        } else if collectionView == newArrivalCV {
            return newArrivalData.count
        } else if collectionView == trendingNowCV {
            return trendingNowData.count
        }
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == categoriesCV {
            if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CategoryCellId", for: indexPath) as? CategoryCell {
                cell.configureModel(data: categoryData[indexPath.item])
                return cell
            }
        } else if collectionView == newArrivalCV {
            if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "NewArrivalCellId", for: indexPath) as? NewArrivalCell {
                cell.imageIcon.image = newArrivalData[indexPath.item].image
                return cell
            }
        } else if collectionView == trendingNowCV {
            if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "TrendingNowCellId", for: indexPath) as? TrendingNowCell {
                cell.imageIcon.image = trendingNowData[indexPath.item].image
                return cell
            }
        }
        return UICollectionViewCell()
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if collectionView == categoriesCV {
            return CGSize(width: 150, height: 120)
        } else if collectionView == newArrivalCV {
            return CGSize(width: 160, height: 190)
        } else {
            return CGSize(width: 160, height: 190)
        }
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
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if collectionView == categoriesCV {
            if indexPath.item == 0 {
                if let vc = UIStoryboard(name: "Chain", bundle: nil).instantiateViewController(withIdentifier: "ChainVC") as? ChainVC {
                    self.navigationItem.backButtonTitle = ""
                    navigationController?.pushViewController(vc, animated: true)
                }
            }
            
        } else if collectionView == newArrivalCV {
            
        } else if collectionView == trendingNowCV {
            
        }
    }
    
}
