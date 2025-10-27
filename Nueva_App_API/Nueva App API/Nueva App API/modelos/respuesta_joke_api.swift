//
//  respuesta_joke_api.swift
//  Nueva App API
//
//  Created by alumno on 10/27/25.
//
struct RespuestaJokeApi: Codable{
    let error: Bool
    let category: String
    let  type: String
    let joke: String?
    let setup: String?
    let delivery: String
    let  setup: String
    let  id: Int
    let   safe:  bool
    let     lang: String
    
    
}
