//
//  errores_api.swift
//  Nueva App API
//
//  Created by alumno on 10/20/25.
//
enum Errores_de_red: Error{
    case url_mala     // direccion mal escrita
    case peticion_invalida // existe un error en la peticion http
    case respuesta_invalida  // Los datos recibidos son incorrecoctos
    case estado_negativo //Algo diferrente al 200: de http
    case falla_al_decodificar_info // Probblasm en el modelo
}

