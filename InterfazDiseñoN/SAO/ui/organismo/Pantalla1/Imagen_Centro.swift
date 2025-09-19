import SwiftUI

struct Imagen_centro: View {
    var body: some View {
        
        ZStack(){
            Image("humano")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width:110)
            
            CiruclosRedondos2()
        }
        .frame(width: 300, height:390)
        .padding(10)
        
    } 
    
}
#Preview {
    Imagen_centro()
}



    
    


