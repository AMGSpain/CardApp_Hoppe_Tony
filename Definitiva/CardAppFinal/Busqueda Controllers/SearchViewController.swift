import UIKit

class SearchViewController: UIViewController,  UIPickerViewDelegate, UIPickerViewDataSource, UISearchBarDelegate{
    
    
    @IBOutlet weak var imageLogo: UIImageView!
    
    @IBOutlet weak var nameSegmentedController: UISegmentedControl!
    @IBOutlet weak var ordenarPor: UIPickerView!
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var barraBusqueda: UISearchBar!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ordenarPor.dataSource = self
        ordenarPor.delegate = self
        //nameSegmentedController.apportionsSegmentWidthsByContent.description
        
    }
    
    struct Orden {
        var valor: String
    }
    let opcion = [
        Orden(valor: "Precio: menor a mayor"),
        Orden(valor: "Precio: mayor a menor"),
        Orden(valor: "Cercania")
    ]
    func pickerView(_ pickerView: UIPickerView, attributedTitleForRow row: Int, forComponent component: Int) -> NSAttributedString? {
        return NSAttributedString(string: opcion[row].valor, attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return opcion.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return opcion[row].valor
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        let idioma = opcion[row]
        print(idioma.valor)
    }
    //segmented
    @IBAction func segmentedControlChanged(_ sender: UISegmentedControl) {
        
        switch nameSegmentedController.selectedSegmentIndex {
        case 0:
            imageLogo.image = UIImage(named: "Pokémon.svg")
        case 1:
            imageLogo.image = UIImage(named: "Magic-logo.svg")
        case 2:
            imageLogo.image = UIImage(named: "yu-gi-oh!.png")
        default:
            imageLogo.image = nil
        }
        
    }
    //table view
    


}
