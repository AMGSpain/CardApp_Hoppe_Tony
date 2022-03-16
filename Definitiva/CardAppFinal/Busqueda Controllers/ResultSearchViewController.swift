///
//  ResultSearchViewController.swift
//  CardAppFinal
//
//  Created by APPS2T on 8/3/22.
//

import UIKit

class TableViewResultResearch: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var card: Carta?
    var collectionDeck: [Carta] = []
    
    var deckPokemon: [Carta] = MockData.shared.loadCardPokemon()
    var deckYugi: [Carta] =  MockData.shared.loadCardYugi()
    var deckMagic: [Carta] = MockData.shared.loadCardMagic()
    
    @IBOutlet weak var TableViewResultResearch: UITableView!
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return collectionDeck.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cellResult = tableView.dequeueReusableCell(withIdentifier: "DeailtForSearchResultID", for: indexPath) as? SearchResultCell{
            if indexPath.section == 0{
                cellResult.card = MockData.shared.collectionDeck[indexPath.row]
            }
            return cellResult
        }else{
            return UITableViewCell()
        }
    }
    
    @IBAction func returnButton(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
