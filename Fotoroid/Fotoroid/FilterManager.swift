//
//  FilterManager.swift
//  Fotoroid
//
//  Created by Rennan Bruno on 03/03/22.
//

import Foundation
import UIKit

enum FilterType: Int {
    case comic
    case sepia
    case halftone
    case crystallize
    case vignette
    case noir
}

class FilterManager {
    
    
    let originalImage: UIImage
    let context = CIContext(options:  nil)
    let filterNames = [
        "CIComicEffect",
        "CISepiaTone",
        "CICMYHalfTone",
        "CICrystallize",
        "CIVignette",
        "CIPhotoEffectNoir"
    ]
    
    init (image: UIImage) {
        self.originalImage = image
    }
    
    func applyFilter(type: FilterType) -> UIImage {
        
    }
    
}
