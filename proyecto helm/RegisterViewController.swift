//
//  RegisterViewController.swift
//  proyecto helm
//
//  Created by Azael García Candela on 26/06/25.
//

import UIKit

class RegisterViewController: UIViewController {

    
    
    @IBOutlet weak var txfNombreUsuario: UITextField!
    
    
    @IBOutlet weak var txfCorreo: UITextField!
    
    @IBOutlet weak var txfContraseña: UITextField!
    
    @IBOutlet weak var txfConfirmarContraseña: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let shadowColor = UIColor(red: 0, green: 1, blue: 0.945, alpha: 1).cgColor
            let placeholderColor = UIColor(red: 115/255, green: 192/255, blue: 226/255, alpha: 0.6)

            // txfNombreUsuario
            txfNombreUsuario.layer.shadowColor = shadowColor
            txfNombreUsuario.layer.shadowRadius = 5
            txfNombreUsuario.layer.shadowOpacity = 0.4
            txfNombreUsuario.layer.shadowOffset = CGSize(width: 0, height: 0)
            txfNombreUsuario.layer.masksToBounds = false
            txfNombreUsuario.attributedPlaceholder = NSAttributedString(string: "Nombre de usuario", attributes: [NSAttributedString.Key.foregroundColor: placeholderColor])

            // txfCorreo
            txfCorreo.layer.shadowColor = shadowColor
            txfCorreo.layer.shadowRadius = 5
            txfCorreo.layer.shadowOpacity = 0.4
            txfCorreo.layer.shadowOffset = CGSize(width: 0, height: 0)
            txfCorreo.layer.masksToBounds = false
            txfCorreo.attributedPlaceholder = NSAttributedString(string: "Correo", attributes: [NSAttributedString.Key.foregroundColor: placeholderColor])

            // txfContraseña
            txfContraseña.layer.shadowColor = shadowColor
            txfContraseña.layer.shadowRadius = 5
            txfContraseña.layer.shadowOpacity = 0.4
            txfContraseña.layer.shadowOffset = CGSize(width: 0, height: 0)
            txfContraseña.layer.masksToBounds = false
            txfContraseña.attributedPlaceholder = NSAttributedString(string: "Contraseña", attributes: [NSAttributedString.Key.foregroundColor: placeholderColor])

                txfConfirmarContraseña.layer.shadowColor = shadowColor
                txfConfirmarContraseña.layer.shadowRadius = 5
                txfConfirmarContraseña.layer.shadowOpacity = 0.4
                txfConfirmarContraseña.layer.shadowOffset = CGSize(width: 0, height: 0)
                txfConfirmarContraseña.layer.masksToBounds = false
                txfConfirmarContraseña.attributedPlaceholder = NSAttributedString(string: "Confirmar contraseña", attributes: [NSAttributedString.Key.foregroundColor: placeholderColor])

                let tapGesture = UITapGestureRecognizer(target: self, action: #selector(dismissKeyboard))
                view.addGestureRecognizer(tapGesture)
    }
    
    // Para no rotar el login
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        return .portrait
    }
    override var shouldAutorotate: Bool{
        return false
    }
    //
    
    @objc func dismissKeyboard() {
       view.endEditing(true)
   }
    
    @IBAction func goToLogin(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    
}
