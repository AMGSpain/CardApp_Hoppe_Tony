//
//  DetailCard2ViewController.swift
//  CardAppFinal
//
//  Created by APPS2T on 8/3/22.
//

import UIKit

class DetailCard2ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    var card: [Carta]?
    
    @IBOutlet weak var TableViewDetailCard: UITableView!
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return card?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cellDetail = tableView.dequeueReusableCell(withIdentifier: "DetailCardCellID", for: indexPath) as? DetailCardCell{
            if indexPath.section == 0 {
                cellDetail.card = card![indexPath.row]
            }
            return cellDetail
        }else{
            return UITableViewCell()
        }
    }
    
    @IBAction func buttonReturntCard(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    
}
