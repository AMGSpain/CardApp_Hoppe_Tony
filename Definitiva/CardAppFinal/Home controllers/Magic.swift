//
//  Magic.swift
//  CardAppFinal
//
//  Created by Cesar Martinez on 19/2/22.
//

import UIKit

class Magic: UIViewController , UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    
    var card: Carta?
    var collectionDeck: [Carta] = []
    var deckMagic: [Carta] = MockData.shared.loadCardMagic()
    
    @IBOutlet var Button: UIButton!
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionDeck = deckMagic
        collectionView.reloadData()
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return MockData.shared.loadCardMagic().count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "magicid", for: indexPath) as? CardCellgenerica {
            cell.card = collectionDeck[indexPath.row]
            cell.index = indexPath
            return cell
        }
        return UICollectionViewCell()
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let screenSize = view.bounds
        let screenWidth: CGFloat = (screenSize.width - 12*2) - 80
        let itemWidth = screenWidth / 3.0
        let itemSize = CGSize(width: itemWidth, height: itemWidth * 350 / 240 )
        //print("Returning item size: \(itemSize)")
        return itemSize
    }
    

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0.0
    }
    @IBAction func closeButtonTapped(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
}
