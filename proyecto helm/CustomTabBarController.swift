import UIKit

class CustomTabBarController: UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()
        configurarTabsPorRol()
    }

    func configurarTabsPorRol() {
        guard let rol = SesionUsuario.compartida.usuarioActual?.rol else { return }
        var tabs: [UIViewController] = []
        let storyboard = self.storyboard
        switch rol {
        case .minero:
            if let inicio = storyboard?.instantiateViewController(withIdentifier: "inicio-vc"),
               let perfil = storyboard?.instantiateViewController(withIdentifier: "perfil-vc") {
                tabs = [inicio, perfil]
            }
        case .supervisor:
            if let inicio = storyboard?.instantiateViewController(withIdentifier: "inicio-vc"),
               let perfil = storyboard?.instantiateViewController(withIdentifier: "perfil-vc") {
                tabs = [inicio, perfil] // Aquí puedes agregar más tabs para supervisor
            }
        case .administrador:
            if let inicio = storyboard?.instantiateViewController(withIdentifier: "inicio-vc"),
               let perfil = storyboard?.instantiateViewController(withIdentifier: "perfil-vc") {
                tabs = [inicio, perfil] // Aquí puedes agregar más tabs para admin
            }
        }
        self.setViewControllers(tabs, animated: false)
    }
} 