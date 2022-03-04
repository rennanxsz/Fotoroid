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
    lazy var filterManager: FilterManager = {
       let filterManager = FilterManager(image: image)
        return filterManager
        
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        ivPhoto.image = image
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        ivPhoto.image = filterManager.applyFilter(type: FilterType(rawValue: 0)!)
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: true)
    }


}
