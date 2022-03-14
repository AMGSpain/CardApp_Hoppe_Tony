//
//  UpLoadCard1ViewControllar.swift
//  CardAppFinal
//
//  Created by APPS2T on 7/2/22.
//

import UIKit

class UpCard1ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    
    @IBOutlet weak var imagenLogo: UIImageView!
    @IBOutlet weak var nameSegmentedController: UISegmentedControl!
    @IBOutlet var pickerEstado: UIPickerView!
    @IBOutlet var pickerIdioma: UIPickerView!

    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        pickerEstado.dataSource = self
        pickerEstado.delegate = self
        pickerIdioma.dataSource = self
        pickerIdioma.delegate = self
    }
    struct Idioma {
        var valor: String
        
    }
    struct Estado {
        var valor: String
    }
    let opcion = [
        Estado(valor: "Mint M"),
        Estado(valor: "Near mint NM"),
        Estado(valor: "Excellent EX"),
        Estado(valor: "Good GD"),
        Estado(valor: "Light played LP"),
        Estado(valor: "Played PL"),
        Estado(valor: "Poor P")
    ]
    let opcion2 = [
        Idioma(valor: "Español"),
        Idioma(valor: "Japonés"),
        Idioma(valor: "Inglés"),
        Idioma(valor: "Alemán"),
        Idioma(valor: "Chino"),
        Idioma(valor: "Francés"),
        Idioma(valor: "Italiano"),
        Idioma(valor: "Portugués"),
        Idioma(valor: "Ruso")
    ]
    
    @IBAction func segmentedControlChanged(_ sender: UISegmentedControl) {
        
        switch nameSegmentedController.selectedSegmentIndex {
        case 0:
            imagenLogo.image = UIImage(named: "Pokémon.svg")
        case 1:
            imagenLogo.image = UIImage(named: "Magic-logo.svg")
        case 2:
            imagenLogo.image = UIImage(named: "yu-gi-oh!.png")
        default:
            imagenLogo.image = nil
        }
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if pickerView.tag == 1 {
                return opcion2.count
            } else {
                return opcion.count
            }
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if pickerView.tag == 1 {
            return "\(opcion2[row].valor)"
            } else {
                return "\(opcion[row].valor)"
            }
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if pickerView.tag == 1 {
            let idioma = opcion2[row]
            print(idioma.valor)
            } else {
                let estado = opcion[row]
                print(estado.valor)
            }
    }
    
    func pickerView(_ pickerView: UIPickerView, attributedTitleForRow row: Int, forComponent component: Int) -> NSAttributedString? {
        if pickerView.tag == 1 {
            return NSAttributedString(string: opcion2[row].valor, attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])
        } else {
            return NSAttributedString(string: opcion[row].valor, attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])
        }
    }
    

}
