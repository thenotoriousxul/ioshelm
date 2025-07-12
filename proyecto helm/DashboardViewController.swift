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
        
        // Configurar el botón de cerrar sesión
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