//
//  HomeTableViewCell.swift
//  PERUGIA
//
//  Created by AryafAlaqabali on 02/04/1443 AH.
//

import UIKit

class HomeTableViewCell: UITableViewCell {

    @IBOutlet weak var imgPlatePhoto: UIImageView!
    @IBOutlet weak var lblPlateName: UILabel!
    
    @IBOutlet weak var lblPlateDrscription: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
      
    }
  
    func setupCell(photo: UIImage, name: String, description: String) {
        imgPlatePhoto.image = photo
        lblPlateName.text = name
        lblPlateDrscription.text = description
        
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }
    
    @IBAction func addFavorite(_ sender: UIButton) {
        print("clicked")
        
        
        let currentImage = sender.imageView?.image
        
        if currentImage == UIImage(systemName: "heart.fill") {
            
            
            sender.setImage(UIImage(systemName: "heart"), for: .normal)
            
            
        } else {
            
            sender.setImage(UIImage(systemName: "heart.fill"), for: .normal)
            
        }

   
        }
    
    
    

}
