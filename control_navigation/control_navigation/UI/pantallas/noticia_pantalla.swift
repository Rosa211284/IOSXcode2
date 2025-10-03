import SwiftUI





struct PantallaNota: View{
    @State var noticia: Noticia
    var body: some View {
        VStack{
            
            Text(noticia.titular).bold().padding(10)
            HStack{
                Image(noticia.imagen)
                    .resizable()
                    .aspectRatio(contentMode: ContentMode.fit)
                    .frame(maxWidth: 350 )
            }
            Text(noticia.cuerpo)
        } .padding(20)
        Spacer()
    }
    }


#Preview {
    PantallaNota(noticia: noticias[3])
}
