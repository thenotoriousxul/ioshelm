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
               let perfil = storyboard?.instantiateViewController(withIdentifier: "perfil-vc"),
               let miCasco = storyboard?.instantiateViewController(withIdentifier: "miCasco-vc") {
                tabs = [inicio, perfil, miCasco]
            }
        case .supervisor:
            if let inicio = storyboard?.instantiateViewController(withIdentifier: "inicio-vc"),
               let perfil = storyboard?.instantiateViewController(withIdentifier: "perfil-vc"),
               let minero = storyboard?.instantiateViewController(withIdentifier: "minero-vc") {
                tabs = [inicio, perfil, minero]
            }
        case .administrador:
            if let inicio = storyboard?.instantiateViewController(withIdentifier: "inicio-vc"),
               let perfil = storyboard?.instantiateViewController(withIdentifier: "perfil-vc"),
               let supervisor = storyboard?.instantiateViewController(withIdentifier: "supervisor-vc"),
               let minero = storyboard?.instantiateViewController(withIdentifier: "minero-vc") {
                tabs = [inicio, perfil, supervisor, minero]
            }
        }
        self.setViewControllers(tabs, animated: false)
    }
} 