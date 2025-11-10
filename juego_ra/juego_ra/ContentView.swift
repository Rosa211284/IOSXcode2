
import SwiftUI
import CoreLocation

struct ContentView: View {
    @State var servicio_ubicacion = ServicioUbicacion()
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("\(servicio_ubicacion.ubicacion_actual?.distance(from: pistas.first!.ubicacion))")
            Text("Distancia a la pista es \(servicio_ubicacion.ubicacion_actual)")
       
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
