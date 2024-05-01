//
//  HomeVC.swift
//  QuickCuts- AdminApp
//
//  Created by Akshat Gulati on 30/04/24.
//

import UIKit

class HomeVC: UIViewController {

    
    
    @IBOutlet weak var todayAppointmentCV: UICollectionView!{
        didSet{
            todayAppointmentCV.registerCellFromNib(cellID: "AppointmentCollectionViewCell")
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

}

extension HomeVC: UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "AppointmentCollectionViewCell", for: indexPath) as! AppointmentCollectionViewCell
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let side = (collectionView.frame.width * 243) / 362
       return CGSize(width: collectionView.frame.size.width, height: side)
    }
    
}
