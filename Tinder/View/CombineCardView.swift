//
//  CombineCardView.swift
//  Tinder
//
//  Created by Edwy Lugo on 12/07/20.
//  Copyright © 2020 Edwy Lugo. All rights reserved.
//

import UIKit

class CombineCardView: UIView {
    
    var usuario: Usuario? {
        didSet {
            if let usuario = usuario {
                fotoImageView.image = UIImage(named: usuario.foto)
                nomeLabel.text = usuario.nome
                idadeLabel.text = "\(usuario.idade)"
                fraseLabel.text = usuario.frase
            }
        }
    }
    
    let fotoImageView: UIImageView = .fotoImageView()
    let nomeLabel: UILabel = .textBoldLabel(32, textColor: .white)
    let idadeLabel: UILabel = .textLabel(28, textColor: .white)
    let fraseLabel: UILabel = .textLabel(18, textColor: .white, numberOfLines: 2)
    
    let deslikeImageView: UIImageView = .iconCard(named: "card-deslike")
    let likeImageView: UIImageView = .iconCard(named: "card-like")
    
    var callback: ((Usuario) -> Void)?
    
    override init(frame: CGRect) {
        super.init(frame:frame)
        
        layer.borderWidth = 0.3
        layer.borderColor = UIColor.lightGray.cgColor
        layer.cornerRadius = 8
        clipsToBounds = true
        nomeLabel.adicionarShadow()
        idadeLabel.adicionarShadow()
        fraseLabel.adicionarShadow()
        
        
        
        addSubview(fotoImageView)
        addSubview(deslikeImageView)
        deslikeImageView.preencher(top: topAnchor, leading: nil, trailing: trailingAnchor, bottom: nil, padding: .init(top: 20, left: 0, bottom: 0, right: 20))
        fotoImageView.preencherSuperview()
        
        addSubview(likeImageView)
        likeImageView.preencher(top: topAnchor, leading: leadingAnchor, trailing: nil, bottom: nil, padding: .init(top: 20, left: 20, bottom: 0, right: 0))
        fotoImageView.preencherSuperview()
        
        let nomeIdadeStackView = UIStackView(arrangedSubviews: [nomeLabel, idadeLabel, UIView()])
        nomeIdadeStackView.spacing = 12
        
        let stackView = UIStackView(arrangedSubviews: [nomeIdadeStackView, fraseLabel])
        stackView.distribution = .fillEqually
        stackView.axis = .vertical
        
        addSubview(stackView)
        stackView.preencher(
            top: nil,
            leading: leadingAnchor,
            trailing: trailingAnchor,
            bottom: bottomAnchor,
            padding: .init(top: 0, left: 16, bottom: 16, right: 16)
        )
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(visualizarClique))
        stackView.isUserInteractionEnabled = true
        stackView.addGestureRecognizer(tap)
        
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc func visualizarClique() {
        if let usuario = self.usuario {
            self.callback?(usuario)
        }
    }
}
