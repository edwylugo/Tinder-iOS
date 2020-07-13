//
//  Loading.swift
//  Tinder
//
//  Created by Edwy Lugo on 13/07/20.
//  Copyright © 2020 Edwy Lugo. All rights reserved.
//

import UIKit

class Loading: UIView {
    
    let loadView: UIView = {
        let load = UIView()
        load.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
        load.backgroundColor = UIColor(red: 218/255, green: 99/255, blue: 111/255, alpha: 1)
        load.layer.cornerRadius = 50
        load.layer.borderWidth = 1
        load.layer.borderColor = UIColor.red.cgColor
        return load
    }()
    
    let perfilImageView: UIImageView = {
        let imagem = UIImageView()
        imagem.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
        imagem.layer.cornerRadius = 50
        imagem.layer.borderWidth = 5
        imagem.layer.borderColor = UIColor.white.cgColor
        imagem.clipsToBounds = true
        imagem.image = UIImage(named: "perfil")
        return imagem
    }()
    
    override init(frame: CGRect) {
        super.init(frame:frame)
        addSubview(loadView)
        loadView.center = center
        
        addSubview(perfilImageView)
        perfilImageView.center = center
        
        
        self.animacao()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func animacao() {
        UIView.animate(withDuration: 1.3, animations: {
            self.loadView.frame = CGRect(x: 0, y: 0, width: 250, height: 250)
            self.loadView.center = self.center
            self.loadView.layer.cornerRadius = 125
            self.loadView.alpha = 0.3
        }) {(_) in
            self.loadView.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
            self.loadView.center = self.center
            self.loadView.layer.cornerRadius = 50
            self.loadView.alpha = 1
            self.animacao()
        }
    }
    
}
