//
//  MatchVC.swift
//  Tinder
//
//  Created by Edwy Lugo on 13/07/20.
//  Copyright © 2020 Edwy Lugo. All rights reserved.
//

import UIKit

class MatchVC: UIViewController {
    var usuario: Usuario? {
        didSet {
            if let usuario = usuario {
                fotoImageView.image = UIImage(named: usuario.foto)
                mensagemLabel.text = "\(usuario.nome) curtiu você também!"
            }
        }
    }
    let fotoImageView: UIImageView = .fotoImageView(named: "pessoa-1")
    let likeImageView: UIImageView = .fotoImageView(named: "icone-like")
    let mensagemLabel: UILabel = .textBoldLabel(18, textColor: .white, numberOfLines: 1)
    
    let mensagemTxt: UITextField = {
       let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.heightAnchor.constraint(equalToConstant: 44).isActive = true
        textField.placeholder = "Diga algo legal..."
        textField.backgroundColor = .white
        textField.layer.cornerRadius = 8
        textField.textColor = .darkText
        textField.returnKeyType = .go
        
        textField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 16, height: 0))
        textField.leftViewMode = .always
        
        textField.rightView = UIView(frame: CGRect(x: 0, y: 0, width: 90, height: 0))
        textField.rightViewMode = .always
        
        return textField
    }()
    
    
    let mensagemEnviarButton: UIButton = {
        let button = UIButton()
        button.setTitle("Enviar", for: .normal)
        button.setTitleColor(UIColor(red: 62/255, green: 163/255, blue: 255/255, alpha: 1), for: .normal)
        button.titleLabel?.font = .boldSystemFont(ofSize: 16)
        return button
    }()
    
    let voltarButton: UIButton = {
        let button = UIButton()
        button.setTitle("Voltar para o Tinder", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = .boldSystemFont(ofSize: 16)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(fotoImageView)
        fotoImageView.preencherSuperview()
        
        let gradient = CAGradientLayer()
        gradient.frame = view.frame
        gradient.colors = [UIColor.clear.cgColor, UIColor.clear.cgColor, UIColor.black.cgColor]
        
        fotoImageView.layer.addSublayer(gradient)
        
        //mensagemLabel.text = "Ana curtiu você também!"
        mensagemLabel.textAlignment = .center
        
        voltarButton.addTarget(self, action: #selector(voltarClique), for: .touchUpInside)
        
        likeImageView.translatesAutoresizingMaskIntoConstraints = false
        likeImageView.heightAnchor.constraint(equalToConstant: 44).isActive = true
        likeImageView.contentMode = .scaleAspectFit
        
        mensagemTxt.addSubview(mensagemEnviarButton)
        mensagemEnviarButton.preencher(top: mensagemTxt.topAnchor, leading: nil, trailing: mensagemTxt.trailingAnchor, bottom: mensagemTxt.bottomAnchor, padding: .init(top: 0, left: 0, bottom: 0, right: 16))
        
        let stackView = UIStackView(arrangedSubviews: [likeImageView, mensagemLabel, mensagemTxt, voltarButton])
        stackView.axis = .vertical
        stackView.spacing = 16
        
        view.addSubview(stackView)
        stackView.preencher(top: nil, leading: view.leadingAnchor, trailing: view.trailingAnchor, bottom: view.bottomAnchor, padding: .init(top: 0, left: 32, bottom: 46, right: 32))
    }
    
    @objc func voltarClique() {
        self.dismiss(animated: true, completion: nil)
    }
}
