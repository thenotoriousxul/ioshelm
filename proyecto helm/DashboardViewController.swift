//
//  DashboardViewController.swift
//  proyecto helm
//
//  Created by Azael García Candela on 26/06/25.
//

import UIKit

class DashboardViewController: UIViewController {

    @IBOutlet weak var lblBienvenida: UILabel!
    @IBOutlet weak var btnCerrarSesion: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Configurar el mensaje de bienvenida
        lblBienvenida.text = "¡Bienvenido al Dashboard!"
        lblBienvenida.textColor = UIColor.white
        lblBienvenida.font = UIFont.systemFont(ofSize: 24, weight: .semibold)
        lblBienvenida.textAlignment = .center
        
        // Configurar el botón de cerrar sesión
        btnCerrarSesion.setTitle("Cerrar Sesión", for: .normal)
        btnCerrarSesion.titleLabel?.font = UIFont.systemFont(ofSize: 17, weight: .semibold)
        btnCerrarSesion.setTitleColor(UIColor(red: 0.047058824450000002, green: 0.078431375319999996, blue: 0.11372549830000001, alpha: 1), for: .normal)
        btnCerrarSesion.backgroundColor = UIColor(red: 0.45098039215686275, green: 0.75294119120000003, blue: 0.88627451660000001, alpha: 1)
        btnCerrarSesion.layer.cornerRadius = 8
        
        // Configurar el color de fondo
        view.backgroundColor = UIColor(red: 0.04673354389, green: 0.07619428768, blue: 0.11324839120000001, alpha: 1)
    }
    
    // Para no rotar el dashboard
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        return .portrait
    }
    
    override var shouldAutorotate: Bool {
        return false
    }
    
    @IBAction func cerrarSesion(_ sender: Any) {
        // Regresar al login
        navigationController?.popToRootViewController(animated: true)
    }
} 