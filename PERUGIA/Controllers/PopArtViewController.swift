//
//  PopArtViewController.swift
//  PERUGIA
//
//  Created by AryafAlaqabali on 05/04/1443 AH.
//

import UIKit

class PopArtViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource , UICollectionViewDelegateFlowLayout{
    


    @IBOutlet weak var collectionView: UICollectionView!
    var arrPopArt = [PopArt]()
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = self
        collectionView.dataSource = self
      
        
        guard let image = UIImage(named: "pop1")else{return}
        arrPopArt.append(PopArt.init(photo: image, name: "Mona Lisa".localized))
                        
        guard let image = UIImage(named: "pop2")else{return}
        arrPopArt.append(PopArt.init(photo: image, name: "Charles Chaplin".localized))
        
        guard let image = UIImage(named: "pop3")else{return}
        arrPopArt.append(PopArt.init(photo: image, name: "Angelina Jolie".localized))
        
        guard let image = UIImage(named: "pop4")else{return}
        arrPopArt.append(PopArt.init(photo: image, name: "Alpert Einstein".localized))
        
        guard let image = UIImage(named: "pop5")else{return}
        arrPopArt.append(PopArt.init(photo: image, name: "Elephant".localized))
        
        guard let image = UIImage(named: "pop6")else{return}
        arrPopArt.append(PopArt.init(photo: image, name: "Van Gogh".localized))
        
        guard let image = UIImage(named: "pop7")else{return}
        arrPopArt.append(PopArt.init(photo: image, name: "Adel".localized))
        
        guard let image = UIImage(named: "pop8")else{return}
        arrPopArt.append(PopArt.init(photo: image, name: "Marilyn Monroe".localized))
        
        guard let image = UIImage(named: "pop9")else{return}
        arrPopArt.append(PopArt.init(photo: image, name: "Diana Princess".localized))
        
        guard let image = UIImage(named: "pop10")else{return}
        arrPopArt.append(PopArt.init(photo: image, name: "Hoorse".localized))
        
        

    
    }
    //Specifies the number of items in the list
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrPopArt.count
    }
    //It feeds the cell with data
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier:"popArtCell" , for: indexPath) as! PopArtCollectionViewCell
        let PopArtData = arrPopArt[indexPath.row]
        cell.setupCell(photo: PopArtData.photo, name: PopArtData.name)
        
        return cell
}
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: self.view.frame.width * 0.45, height: self.view.frame.width * 0.45 )
        
         func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewDelegateFlowLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat{
            return 1
        }
        func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewDelegateFlowLayout, minimumInteritemForSectionAt section: Int) -> CGFloat{
            return 0.1}
         }
    private func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewDelegateFlowLayout, insetForSectionAt section: Int) -> UIEdgeInsets{
            return UIEdgeInsets(top: 1, left: 2, bottom: 1, right: 2)
    }
    }
struct PopArt{
    let photo : UIImage
    let name : String
}
    
