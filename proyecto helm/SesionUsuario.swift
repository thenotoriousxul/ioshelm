class SesionUsuario {
    static let compartida = SesionUsuario()
    var usuarioActual: Usuario?
    private init() {}
} 