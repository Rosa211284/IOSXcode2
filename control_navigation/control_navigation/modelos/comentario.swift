//
//  comentario.swift
//  control_navigation
//
//  Created by alumno on 10/8/25.
//
import Foundation

struct comentario:Identifiable, Codable{
    let  postId: Int
    let  id: Int
    let  name:String
    let  email: String
    let  body: String
}



