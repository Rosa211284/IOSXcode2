import SwiftUI

struct Reglas2: View {
    
    var body: some View {
        HStack(){
            Spacer()
            Image(systemName: "xmark.circle")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40)
                .padding(5)
            
            VStack(alignment: .leading){
                
                Text("Ataca con dos espadas al mismo tiempo")
                Text("Habilidades que puedes hacer.")
                Text("Bonificación de velocidad de ataque 1,80")
                Text("Bonificación de defensa de armas 1,50")
                Text("Bonificación de enfriamiento 1.20")

            }.padding(20)
  
        } .background(Color.gray)
    }
}

#Preview {
    Reglas2()
}

