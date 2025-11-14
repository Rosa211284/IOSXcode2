import CoreLocation

let pistas = [
    Pista(
        ubicacion:
            CLLocation(latitude: 31.74211835729694, longitude: -106.43233447079758),  
        
        id: "pista_1",
        cuerpo:
            PistaInformacion(
                informacion: "Texto para mostrar al usario"
            ),
        imagenURL: URL(string: "https://upload.wikimedia.org/wikipedia/commons/b/b4/Vincent_Willem_van_Gogh_128.jpg")
    ),
    
    Pista(
        ubicacion: CLLocation(
            latitude: 31.74205192244658,
            longitude: -106.43238899466401
        ),
        id: "pista_2",
        cuerpo: PistaInteractuable(
            informacion: "Texto de prueba para la pantalla interactuable",
            interacciones: [
                boton(
                    mensaje: "Puchopicame para ir a la pista 1",
                    conecta_con_pista: "pista_1")
            ]
        ),
        imagenURL: URL(string: "https://upload.wikimedia.org/wikipedia/commons/b/b4/Vincent_Willem_van_Gogh_128.jpg")
    ),
    
    Pista(
        ubicacion: CLLocation(
            latitude: 31.74205192244658,
            longitude: -106.43238899466401
        ),
        id: "pista_3",
        cuerpo: PistaInteractuable(
            informacion: "Texto de prueba para la pantalla interactuable",
            interacciones: [
                boton(
                    mensaje: "Puchopicame para ir a la pista 1",
                    conecta_con_pista: "pista_2")
            ]
        ),
        imagenURL: URL(string: "https://upload.wikimedia.org/wikipedia/commons/b/b4/Vincent_Willem_van_Gogh_128.jpg")
    ),
    
    Pista(
        ubicacion: CLLocation(
            latitude: 31.74205192244658,
            longitude: -106.43238899466401
        ),
        id: "pista_4",
        cuerpo: PistaInteractuable(
            informacion: "Texto de prueba para la pantalla interactuable",
            interacciones: [
                boton(
                    mensaje: "Puchopicame para ir a la pista 1",
                    conecta_con_pista: "pista_3")
            ]
        ),
        imagenURL: URL(string: "https://upload.wikimedia.org/wikipedia/commons/b/b4/Vincent_Willem_van_Gogh_128.jpg")
    )
]
  
       
    
    
    
    /*
    
    
    
    Pista(ubicacion: CLLocation(latitude: 31.743900921876357, longitude:  -106.43265971449689),
          id: "pista3",
          cuerpo: PistaInformacion(informacion: "texto ")),
    
    Pista(ubicacion: CLLocation(latitude:  31.74285615813838, longitude: -106.4328928808415),
          id: "pista4",
          cuerpo: PistaInformacion(informacion: "texto ")),
    
    Pista(ubicacion: CLLocation(latitude:  31.742363569955618, longitude:  -106.43358333729007),
          id: "pista5",
          cuerpo: PistaInformacion(informacion: "texto "))
]

     */



