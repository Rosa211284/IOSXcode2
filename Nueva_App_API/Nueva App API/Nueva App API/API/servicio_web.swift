import Foundation
class ConexionApi{
    
   static func descargar_datos<T: Codable> (url: String) async -> T?{
        do{
            guard let url = URL (string: url) else{ throw Errores_de_red.url_mala}
            let (datos, respuesta) = try await URLSession.shared.data(from: url)
            guard let respuesta = respuesta as? HTTPURLResponse else { throw Errores_de_red.respuesta_invalida}
            guard respuesta.statusCode >= 200 && respuesta.statusCode < 300 else{ throw Errores_de_red.estado_negativo}
            guard let respuesta_decodificada = try? JSONDecoder().decode(T.self, from: datos) else {throw Errores_de_red.falla_al_decodificar_info}
            return respuesta_decodificada
            
        }
        catch Errores_de_red.url_mala{
            print("Escribir algo que sea una url")
        }
        catch Errores_de_red.respuesta_invalida{
            print("servdior fuera")
        }
        
        catch Errores_de_red.estado_negativo{
            print("servidor esta ocupado, la url no exite")
        }
        catch  Errores_de_red.falla_al_decodificar_info{
            print("Estructura mal escrita\(type(of: T.self))")
        }
        catch{
            print("Algo salio mal, y ni idea de que sea")
        }
        return nil
    }
}

