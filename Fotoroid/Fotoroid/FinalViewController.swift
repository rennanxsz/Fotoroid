//
//  FinalViewController.swift
//  Fotoroid
//
//  Created by Rennan Bruno on 01/03/22.
//

import UIKit
import Photos

class FinalViewController: UIViewController {

    @IBOutlet weak var ivPhoto: UIImageView!
    var image: UIImage!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        ivPhoto.image = image
        ivPhoto.layer.borderWidth = 10
        ivPhoto.layer.borderColor = UIColor.white.cgColor
    }
    
    func saveToAlbum() {
        PHPhotoLibrary.shared().performChanges ({
            
            let creationRequest = PHAssetChangeRequest.creationRequestForAsset(from: self.image)
            let addAssetRequest = PHAssetCollectionChangeRequest()
            addAssetRequest.addAssets([creationRequest.placeholderForCreatedAsset] as NSArray)
            
            
        })  {(success, error ) in
            if !success {
                print(error!.localizedDescription)
            } else {
                let alert = UIAlertController(title: "Imagem Salva!", message: "Sua imagem foi salva no álbum de fotos!", preferredStyle: .alert)
                let okAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
                alert.addAction(okAction)
                self.present(alert, animated: true, completion: nil)
            }
        }
    }
    
    @IBAction func save(_ sender: UIButton) {
        PHPhotoLibrary.requestAuthorization { (status) in
            switch status {
            case .authorized:
                self.saveToAlbum()
            default:
                let alert = UIAlertController(title: "ERRO", message: "O Dispositivo precisa de acesso para salvar a foto alterada em sua galeria.", preferredStyle: .alert)
                let okAction = UIAlertAction(title: "Ok", style: .cancel, handler: nil)
                alert.addAction(okAction)
                self.present(alert, animated: true, completion: nil)
            }
        }
    }
    @IBAction func restart(_ sender: UIButton) {
        
        navigationController?.popToRootViewController(animated: true)
        
    }
    
    
}
