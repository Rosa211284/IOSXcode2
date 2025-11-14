import SwiftUI
import CoreLocation

struct Tarjeta_Pista: View {
    var pista: Pista
    
    var body: some View {
        VStack {

            // --- IMAGEN ---
            AsyncImage(url: pista.imagenURL) { estado in
                switch estado {
                case .empty:
                    ProgressView("Descargando imagen...")
                case .success(let imagen):
                    imagen
                        .resizable()
                        .scaledToFit()
                        .padding(5)
                case .failure(_):
                    Text("Error al cargar la imagen")
                        .foregroundColor(.red)
                @unknown default:
                    EmptyView()
                }
            }
            .frame(width: 200, height: 200)
            .background(Color.white)
            .border(Color.black)
            .cornerRadius(15)
            .padding(5)

            // --- TEXTO ---
            Text("Hola soy: \(pista.id)")
                .padding(5)
        }
    }
}

#Preview {
    Tarjeta_Pista(
        pista: Pista(
            ubicacion: CLLocation(latitude: 0, longitude: 0),
            id: "pista_1",
            cuerpo: CuerpoPista(informacion: "Texto demo"),
            imagenURL: URL(string: "https://picsum.photos/300")
        )
    )
}
