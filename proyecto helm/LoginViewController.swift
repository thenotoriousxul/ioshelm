//
//  ViewController.swift
//  proyecto helm
//
//  Created by Azael García Candela on 24/06/25.
//

import UIKit

class LoginViewController: UIViewController {


    @IBOutlet weak var txfEmail: UITextField!
    @IBOutlet weak var txfContrasena: UITextField!
    @IBOutlet weak var btnIniciarSesion: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        let shadowColor = UIColor(red: 0, green: 1, blue: 0.945, alpha: 1).cgColor
        let placeholderColor = UIColor(red: 115/255, green: 192/255, blue: 226/255, alpha: 0.6)
        
        txfEmail.layer.shadowColor = shadowColor
        txfEmail.layer.shadowRadius = 5
        txfEmail.layer.shadowOpacity = 0.4
        txfEmail.layer.shadowOffset = CGSize(width: 0, height: 0)
        txfEmail.layer.masksToBounds = false
        
        txfContrasena.layer.shadowColor = shadowColor
        txfContrasena.layer.shadowRadius = 5
        txfContrasena.layer.shadowOpacity = 0.4
        txfContrasena.layer.shadowOffset = CGSize(width: 0, height: 0)
        txfContrasena.layer.masksToBounds = false
        
        txfEmail.attributedPlaceholder = NSAttributedString(string: "Correo", attributes: [NSAttributedString.Key.foregroundColor: placeholderColor])
        txfContrasena.attributedPlaceholder = NSAttributedString(string: "Contraseña", attributes: [NSAttributedString.Key.foregroundColor: placeholderColor])
        
        
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

    
    @IBAction func goToRegister(_ sender: Any) {
        if let vc = storyboard?.instantiateViewController(identifier: "registerId")  {
            navigationController?.pushViewController(vc, animated: true)
        }
        else {
            print("no se pudo cargar el register")
        }
    }
    
    @IBAction func iniciarSesion(_ sender: Any) {
        // Ahora navegar al TabBarController
        if let vc = storyboard?.instantiateViewController(identifier: "tabbar-vc") {
            vc.modalPresentationStyle = .fullScreen
            present(vc, animated: true, completion: nil)
        } else {
            print("no se pudo cargar el TabBarController")
        }
    }
    
}

