//
//  EsEstaCartaViewController.swift
//  CardAppFinal
//
//  Created by Cesar Martinez on 20/2/22.
//

import UIKit

class EsEstaCartaViewController: UIViewController, UIPickerViewDelegate, UIImagePickerControllerDelegate & UINavigationControllerDelegate {
    
    
    @IBOutlet weak var imagenCarta: UIImageView!
    @IBOutlet weak var botonNo: UIButton!
    @IBOutlet weak var botonSi: UIButton!
    
    @IBOutlet var imagenCartaVenta: UIImageView!
    
    var imagePicker = UIImagePickerController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    @IBAction func subirFoto( seder: Any){
        
        let alertController = UIAlertController(title: "Seleccione una opción", message: "para seleccionar una foto", preferredStyle: .actionSheet)
    
        
        let galeriaAction = UIAlertAction(title: "Galeria", style: .default){
            action in
            
            if UIImagePickerController.isSourceTypeAvailable(.savedPhotosAlbum){
                print("Galeria pulsada")

                self.imagePicker.delegate = self
                self.imagePicker.sourceType = .photoLibrary
                self.imagePicker.allowsEditing = false

                self.present(self.imagePicker, animated: true, completion: nil)
            }
        }
        
        let camaraAction = UIAlertAction(title: "Cámara", style: .default) {
            action in
            
                print("Camara pulsada")

                self.imagePicker.delegate = self
                self.imagePicker.sourceType = .camera
            
                self.present(self.imagePicker, animated: true)
            
            }
        
        let cancelAction = UIAlertAction(title: "Cancelar", style: .cancel) {
            action in }
        
        alertController.addAction(camaraAction)
        alertController.addAction(cancelAction)
        alertController.addAction(galeriaAction)

        self.present(alertController, animated: true, completion: nil)
        }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]){
        self.dismiss(animated: true, completion: { () -> Void in

        })
        
        guard let image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage else{
            return
        }
        
        print("He clickado imagen")
        imagenCartaVenta.image = image
    }

    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        dismiss(animated: true, completion:nil)
    }
    
    
    @IBAction func Volver(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    @IBAction func SubirCarta(_ sender: Any) {
        let alert = UIAlertController(title: "Carta subida", message: "Añadida a tus ofertas", preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: { (action: UIAlertAction!) in
            self.dismiss(animated: true, completion: nil)
                print("cerrando vista de subida")
                }))
            self.present(alert, animated: true, completion: nil)
        //hacer segue a usuario o cerrar modal
    }
}
   
