import UIKit

/*protocol DataCollectionProtocol {
    func deleteData(indx: Int)
}*/
class CardCellgenerica: UICollectionViewCell{
    
    var card: Carta?{
        didSet { renderUI() }
    }
    
//  var delegate: DataCollectionProtocol?
    var index: IndexPath?
    
    @IBOutlet weak var imageUrl: UIImageView!
    @IBOutlet weak var price: UILabel!
    @IBOutlet weak var name: UILabel!
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
    }
    
    private func renderUI(){
        guard let card = card else { return }
    
        name.text = card.name
        price.text = "$\(card.price)"
        imageUrl.image = UIImage(named: card.imageURL)
        
        
    }
    

}
