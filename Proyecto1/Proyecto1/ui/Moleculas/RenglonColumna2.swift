import SwiftUI

struct RenglonColumna2: View{
    var columna_1: String
    var columna_2: String
    
    var body: some View{
        HStack(alignment: .firstTextBaseline){
           
            Text(columna_1)
                .padding(15)
                .multilineTextAlignment(.trailing)
                .frame(width:250, alignment:  .leading)
                .foregroundStyle(Color.white)
                .background(Color.blue)
                //. mask(Circle() .offset(x: 35))
               
            Spacer()
            
            Text(columna_2)
                .padding(.horizontal, 20)
        }
     
    }
}

#Preview {
    RenglonColumna2(columna_1: "nombre", columna_2: " columna2")
}

