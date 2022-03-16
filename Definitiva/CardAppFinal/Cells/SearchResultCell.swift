//
//  SearchResultCard.swift
//  CardAppFinal
//
//  Created by APPS2T on 9/3/22.
//

import UIKit

class SearchResultCell:  UITableViewCell{
    
    var card: Carta?{
        didSet { renderUI() }
    }
    
    var delegate: DataCollectionProtocol?
    
    @IBOutlet var name: UILabel!
    @IBOutlet var price: UILabel!
    @IBOutlet var imageURL: UIImageView!
    @IBOutlet var seller: UILabel!
    @IBOutlet var edition: UILabel!
    
    
    override func layoutSubviews() {
        super.layoutSubviews()
    }
    
    private func renderUI() {
        guard let card = card else { return }
    
        name.text = card.name
        price.text = "$\(card.price)"
        imageURL.image = UIImage(named: card.imageURL)
       
        
    }
    
}
