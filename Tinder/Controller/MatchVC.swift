//
//  MatchVC.swift
//  Tinder
//
//  Created by Edwy Lugo on 13/07/20.
//  Copyright © 2020 Edwy Lugo. All rights reserved.
//

import UIKit

class MatchVC: UIViewController {
    
    let fotoImageView: UIImageView = .fotoImageView(named: "pessoa-1")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(fotoImageView)
        fotoImageView.preencherSuperview()
        
        
    }
}
