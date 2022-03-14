//
//  TutorialController.swift
//  CardAppFinal
//
//  Created by Cesar Martinez on 19/2/22.
//

import UIKit
class TutorialViewController:
    UIViewController, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout{
    
    @IBOutlet weak var Button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func BackButton(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
}
