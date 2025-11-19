import SwiftUI
 
struct Pantalla_principal: View {
    @State var proveedor_ubicacion = ServicioUbicacion()
    
    var body: some View {
        VStack {
            Text("Pistas y donde encontrarlas")
                .font(.title)
                .padding()
            
            // Simulación de cámara o vista principal
            Text("🔍 Usa tu cámara para buscar pistas cercanas")
                .padding()
                .background(Color.gray.opacity(0.2))
                .cornerRadius(12)
            
            NavigationStack {
                VStack(spacing: 20) {
                    ForEach(Array(pistas.enumerated()), id: \.element.id) { index, pista in
                        if pista.puede_ser_recogida(ubicacion: proveedor_ubicacion.ubicacion_actual) ||
                           pista.esta_en_rango(ubicacion: proveedor_ubicacion.ubicacion_actual) {
                            
                            NavigationLink {
                                // Navegar a la pantalla de la pista según el índice
                                switch index {
                                case 0:
                                    PantallaPista1()
                                case 1:
                                    PantallaPista2()
                                case 2:
                                    PantallaPista3()
                                default:
                                    Text("Pista no disponible")
                                }
                            } label: {
                                Text("Ir a Pista \(index + 1)")
                                    .padding()
                                    .background(Color.blue)
                                    .foregroundColor(.white)
                                    .cornerRadius(10)
                            }
                        } else {
                            Text("No estás cerca de la pista \(index + 1)")
                                .foregroundColor(.gray)
                        }
                    }
                }
                .padding()
            }
        }
        .padding()
    }
}
 
// MARK: - Pantallas individuales de pista
struct PantallaPista1: View {
    var body: some View {
        VistaCamara()
        VStack(spacing: 30) {
            // Imagen de la pista (puedes usar tu propia imagen en lugar de este ícono)
            Image(systemName: "tree.fill") // Reemplaza este ícono con una imagen si tienes una personalizada
                .resizable()
                .scaledToFit()
                .frame(width: 250, height: 250)
                .padding()
                .background(Color.green.opacity(0.2)) // Fondo verde para destacar la imagen
                .cornerRadius(20)

            // Título de la pantalla
            Text("Pantalla de Pista 1")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(.blue)
                .padding(.top, 10)
            
            // Descripción de la pista con fondo amarillo suave y bordes redondeados
            Text("🔍 Busca un árbol grande cerca de la entrada del parque.")
                .font(.title2)
                .fontWeight(.medium)
                .foregroundColor(.black)
                .padding()
                .background(Color.yellow.opacity(0.3)) // Fondo amarillo suave
                .cornerRadius(15) // Bordes redondeados
                .padding(.horizontal, 30) // Márgenes horizontales para separar el texto de los bordes

            Spacer()
            
            // Botón con acción (puedes cambiar la acción para hacer algo)
            Button(action: {
                // Acción del botón
                print("Comienza a buscar la pista")
            }) {
                Text("¡Comienza a buscar!")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .cornerRadius(12)
            }
            .padding(.horizontal, 30) // Márgenes horizontales
            .padding(.bottom, 40) // Espaciado inferior
        }
        .navigationTitle("Pista 1") // Título de la vista
        .background(Color.white) // Fondo blanco para la vista
        .cornerRadius(20) // Esquinas redondeadas de la vista principal
        .shadow(radius: 10) // Sombra sutil para la vista
        .padding() // Padding alrededor de la vista principal
        .background(Color.blue.opacity(0.1)) // Fondo con un toque de color azul con opacidad
        .cornerRadius(20) // Esquinas redondeadas para todo el fondo
    }
}
 
struct PantallaPista2: View {
    var body: some View {
        VStack(spacing: 20) {
            VistaCamara()
            Text("Pantalla de Pista 2")
                .font(.largeTitle)
            Text("🔍 Busca un objeto azul brillante en la plaza central.")
                .padding()
                .background(Color.yellow.opacity(0.3))
                .cornerRadius(12)
            Spacer()
        }
        .navigationTitle("Pista 2")
        .padding()
    }
}
 
struct PantallaPista3: View {
    var body: some View {
        VStack(spacing: 20) {
            VistaCamara()
            Text("Pantalla de Pista 3")
                .font(.largeTitle)
            Text("🔍 Observa las luces rojas cerca de la fuente del parque.")
                .padding()
                .background(Color.yellow.opacity(0.3))
                .cornerRadius(12)
            Spacer()
        }
        .navigationTitle("Pista 3")
        .padding()
    }
}
 
// Preview
#Preview {
    Pantalla_principal()
}
