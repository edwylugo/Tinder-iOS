//
//  UsuarioService.swift
//  Tinder
//
//  Created by Edwy Lugo on 13/07/20.
//  Copyright © 2020 Edwy Lugo. All rights reserved.
//

import Foundation

class UsuarioService {
  
  static let shared = UsuarioService()
  
  let usuarios: [Usuario] = [
    Usuario(id: 101, nome: "Maria Silva", idade: 19, match: true, frase: "O último a dar match chama", foto: "pessoa-1"),
    Usuario(id: 102, nome: "Debora Lima", idade: 25, match: false, frase: "Deu like sem querer?", foto: "pessoa-2"),
    Usuario(id: 103, nome: "Sandra Souza", idade: 24, match: false, frase: "Acho q a gente combina", foto: "pessoa-3"),
    Usuario(id: 104, nome: "Anna Beatriz", idade: 22, match: true, frase: "Não bebo não fumo e não curto balada", foto: "pessoa-4"),
    Usuario(id: 105, nome: "Laura Oliveira", idade: 26, match: true, frase: "Quer saber mais sobre mim?", foto: "pessoa-5"),
    Usuario(id: 106, nome: "Silva Paz", idade: 19, match: false, frase: "Se não for conversar nem dá like", foto: "pessoa-6"),
    Usuario(id: 107, nome: "Debora Lima", idade: 25, match: false, frase: "Em busca de novas amizades", foto: "pessoa-7"),
    Usuario(id: 108, nome: "Sandra Souza", idade: 24, match: true, frase: "Fotos sem camisa não me impressionam", foto: "pessoa-8"),
    Usuario(id: 109, nome: "Tah Beatriz", idade: 22, match: false, frase: "Oi pelo visto a gente combina", foto: "pessoa-9"),
    Usuario(id: 110, nome: "Laura Oliveira", idade: 26, match: true, frase: "Procurando um bom papo", foto: "pessoa-10"),
    Usuario(id: 111, nome: "Sabrina Santos", idade: 21, match: false, frase: "Quem se descreve se limita", foto: "pessoa-11"),
    Usuario(id: 112, nome: "Amelia Margaret", idade: 30, match: false, frase: "Não quero nada casual", foto: "pessoa-12"),
    Usuario(id: 113, nome: "Laura Komako", idade: 26, match: true, frase: "Bom humor é fundamental", foto: "pessoa-13"),
    Usuario(id: 114, nome: "Rosa Oliveira", idade: 25, match: false, frase: "Não sei me descrever", foto: "pessoa-14"),
    Usuario(id: 115, nome: "Nadia Joana", idade: 20, match: false, frase: "Quer saber mais? é só dar like", foto: "pessoa-15"),
    Usuario(id: 116, nome: "Mary Dandara", idade: 20, match: false, frase: "Tenho um relacionamento aberto", foto: "pessoa-16"),
    Usuario(id: 117, nome: "Anita Eleanor", idade: 23, match: false, frase: "Bonita demais pra ser verdade", foto: "pessoa-17"),
    Usuario(id: 118, nome: "Helen Aung San", idade: 24, match: true, frase: "Espero q vc seja mente aberta", foto: "pessoa-18"),
    Usuario(id: 119, nome: "Laura Nelle", idade: 18, match: false, frase: "Estou aqui para fazer novas amizades", foto: "pessoa-19"),
    Usuario(id: 120, nome: "Maria Virginia", idade: 18, match: false, frase: "Adoro balada", foto: "pessoa-20")
  ]
  
//  func buscaUsuarios () -> [Usuario] {
//    return self.usuarios
//  }
    
    func buscaUsuarios(completion: @escaping ([Usuario]?, Error?) -> ()){
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
        completion(self.usuarios, nil)
        }
    }
}

