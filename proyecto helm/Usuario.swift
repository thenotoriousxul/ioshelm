enum RolUsuario: String {
    case minero
    case supervisor
    case administrador
}

struct Usuario {
    let nombre: String
    let rol: RolUsuario
} 