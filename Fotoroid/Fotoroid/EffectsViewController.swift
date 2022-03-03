//
//  EffectsViewController.swift
//  Fotoroid
//
//  Created by Rennan Bruno on 01/03/22.
//

import UIKit

class EffectsViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var viLoading: UIView!
    @IBOutlet weak var ivPhoto: UIImageView!
    
    var image: UIImage!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        ivPhoto.image = image
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: true)
    }


}
