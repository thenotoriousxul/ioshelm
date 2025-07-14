import UIKit

class InicioViewController: UIViewController {
    @IBOutlet weak var lblRol: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red: 0.04673354389, green: 0.07619428768, blue: 0.11324839120000001, alpha: 1)
        if let rol = SesionUsuario.compartida.usuarioActual?.rol {
            lblRol.text = "Rol actual: \(rol.rawValue.capitalized)"
        } else {
            lblRol.text = "Rol actual: desconocido"
        }
    }
} 