
import CoreLocation

let pistas = [
    Pista(
        ubicacion:
            CLLocation(latitude: 31.74249399834499, longitude: -106.43208805090772),
        id: "pista1",
        cuerpo:
            PistaInformacion(
                informacion: "Texto para mostrar al usuario"
            )
    ),
    
    Pista(
        ubicacion: CLLocation(latitude: 31.742407461151334, longitude:  -106.43174101331037),
          id: "pista2",
          cuerpo:
            PistaInteractuable(
                informacion: "texto ",
                interacciones: [
                    boton (mensaje: "",
                           conecta_con_pista: "pista1",
                          )]),
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



