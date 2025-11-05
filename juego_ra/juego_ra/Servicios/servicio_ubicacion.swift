//
//  servicio_ubicacion.swift
//  juego_ra
//
//  Created by alumno on 11/5/25.
//
import Foundation
import CoreLocation

@Observable
class servicioUbicacion: NSObject, CLLocationManagerDelegate{
    
    var manejador_ubicacion = CLLocationManager()
    
    var estado_de_autorizacion: CLAuthorizationStatus?
   var ubicacion_actual: CLLocationCoordinate2D?
    
    override init(){
        super.init()
        manejador_ubicacion.delegate = self
    }
    
    func locationManagerDidChangeAuthorization(_ manager: CLLocationManager){
        estado_de_autorizacion = manager.authorizationStatus
        
        switch(estado_de_autorizacion){
        case .notDetermined:
            manager.requestWhenInUseAuthorization()
            
        case .authorizedWhenInUse:
            manager.requestLocation()
            
        case .denied:
            print("usuario no dio los permisos")
            
        case .restricted:
            print("permisos retringidos para el uso de la informacion")
            
        default:
            print("algo salio mal")
            
            
        }
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        print("\(locations.count)")
        ubicacion_actual = locations.last?.coordinate
    }
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: any Error) {
        print("error:\(error.localizedDescription)")
    }
    
    func detetner_ubicacion(){
        manejador_ubicacion.stopUpdatingLocation()
    }
}
