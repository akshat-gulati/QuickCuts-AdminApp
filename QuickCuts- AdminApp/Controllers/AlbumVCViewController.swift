//
//  AlbumVCViewController.swift
//  QuickCuts- AdminApp
//
//  Created by Akshat Gulati on 01/05/24.
//

import UIKit

class AlbumVCViewController: UIViewController {

    @IBOutlet weak var albumCollectionView: UICollectionView!{
        didSet {
            albumCollectionView.registerCellFromNib(cellID: "AlbumCollectionViewCell")
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    


}
extension AlbumVCViewController : UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        7
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "AlbumCollectionViewCell", for: indexPath) as! AlbumCollectionViewCell
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let side = (collectionView.frame.size.width - 15) / 2
        let height = ( side * 177 ) / 179
        return CGSize(width:  side, height: height)
    }
}
