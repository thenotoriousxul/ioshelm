import UIKit

class PerfilViewController: UIViewController {
    @IBOutlet weak var btnCerrarSesion: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red: 0.04673354389, green: 0.07619428768, blue: 0.11324839120000001, alpha: 1)
        btnCerrarSesion.layer.cornerRadius = 8
    }
    
    @IBAction func cerrarSesion(_ sender: Any) {
        self.view.window?.rootViewController?.dismiss(animated: true, completion: nil)
    }
} 