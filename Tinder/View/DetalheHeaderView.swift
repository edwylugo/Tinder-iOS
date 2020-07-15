//
//  DetalheHeaderView.swift
//  Tinder
//
//  Created by Edwy Lugo on 15/07/20.
//  Copyright © 2020 Edwy Lugo. All rights reserved.
//

import UIKit

class DetalheHeaderView: UICollectionReusableView {
    
    var usuario: Usuario? {
           didSet {
               if let usuario = usuario {
                fotoImageView.image = UIImage(named: usuario.foto)
               }
           }
       }
    
    var fotoImageView: UIImageView = .fotoImageView(named: "")
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(fotoImageView)
        fotoImageView.preencherSuperview()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
