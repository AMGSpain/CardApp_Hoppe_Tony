
import UIKit

class DetailCardCell: UITableViewCell {
    
    var card: Carta? {
        didSet { renderUI() }
    }
    
    static let identifier = "DetailCardCellID"
    
    var delegate: DataCollectionProtocol?
    
    @IBOutlet var name: UILabel!
    @IBOutlet var situationCard: UILabel!
    @IBOutlet var price: UILabel!
    
    override func layoutSubviews() {
        super.layoutSubviews()
    }
    
    private func renderUI(){
        guard let card = card else {return}
        
        name.text = card.name
        price.text = "$\(card.price)"
        //situationCard.text = card.situationCard
    }
}
